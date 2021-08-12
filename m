Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNVK22EAMGQEC5WESOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id A831B3EAC73
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 23:40:07 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id g6-20020ab05fc60000b02902ab17bfbd55sf1801437uaj.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 14:40:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628804406; cv=pass;
        d=google.com; s=arc-20160816;
        b=cCW1mNcJNs1kPtbXYDwjOezBHVw5MQgi+Ek6ALXM5G654AL2Nji62StGopsv4/txKj
         d73tYgF2vvOl5y976u9ADM6a0v8QYyI/kmd/g0yDX/6eRFRVNQeNkM1YTpeUm8SmoIzg
         ne+C/CWE2AyA5cRoPhj/kRKq2Zq05Zn/Ej3Xs1cXy99JThRYYLlqGQrlaVs0pEEagKdL
         VgUAXjMACh9EXcAHA4qQ2KXpKwJpdIn0dU3yFL1cmws1Jc1lcMjlyFegVn/gqC7UEV6E
         wcAwZnWCZGOTJ5VtVrBxdewn0B7kig1+FwfDf9WLSzHIcFGTGYSJWtx+8dbNSGXfjt8u
         i96w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sdS3Z+ESqUFn16UUx+WWbUJ2zAjdHvnoknr1JsapH/0=;
        b=ezsMVvu/rp7uDQM5cUW84Gul2SYk79JG18d08R1yS7X4T3rL7eS7WeNNThESn9u8EE
         MOaETpDtt+GD2suThDQueSp3NV7I+6PyFJ62+/PU0vr/y3jmx+EDm5uQRvMHEto3WJr0
         IoFVNkhHCkw8bwB7k+zuIsJPJREEOUmfsuHCPf3OkSWBE+23y/UtBrQfkVP9Au4GFjsq
         BUp02wxsxbQXKHc3ATqm0yGuBiy6KhAaSO197xvDIGLIz6Xt8i/csh6+pQyrJ1fLPwWb
         Him7KkniWiUE1jlcnB42wXECduHi0fFdA6zoAcnZfNg8KdVcroYGhTdyrAs6BH5dU1o6
         VdpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sdS3Z+ESqUFn16UUx+WWbUJ2zAjdHvnoknr1JsapH/0=;
        b=AgYgIJPlrOMu14atrdgnsNuNPZ1a/yM/mnaj7HyejPn4BVzOnAwZZFrhgX30qtB+EW
         BvF8OHzh4IxvrH8CZMxCgbsoPN25oQ7tvd1skTY9QQHcwelYH1vKPkM28Owjc6EgnpQs
         MUDNMaCRsW0zdEcqzWuSvA5JmhFfUeVQfLK/PlTsARgu/KsDUZwcd/UyKh0U2U22L/HA
         dPU6IZ/k4jHTl7ZRvFKxu55t1qijmmtMGge50tF2mp0YEMa1xUgSnxlsFhI8Cni1UJ1Q
         k4SzoKRfRZAGPJbgW2CGqM3jPlZYKhtqAfq2hCmzBi/OBFW3AB1N5mRnkK5oqE5DeuF9
         9yOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sdS3Z+ESqUFn16UUx+WWbUJ2zAjdHvnoknr1JsapH/0=;
        b=C+aJd0IW+I6zfqCBnYiXGt3sadW7/jggXu+oWYXz26/rdidxNvX4e3MkmdM1EgdAb5
         HGTWsRx9cbREH1KBhVMwjaCDkLKRBOKxWDBDt5BpRfM1Dqv33Y4OdRaTHhfwaShgQ9Cq
         MNcnZKzO2g6XRlC+t64VG6ceVfCapjwkUbMoHV3tIZuOUaaDTjF4isUa1a+sxESeUEd1
         v9hRvjbQTWaYtxZFVbHCzFjypkEYT1T6fBvqwafXlLhUeNBHSVQjdMCmX2ntP92bjI8N
         jY/xRFBNRqYu1YSHrBLG8Ma6SAaXHltXFWsta8/xPWUrgv1jvzCOVI96mqU/NLtpzzCv
         cjNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CxP5P7gm1pfLt2nYwynvI3LhzGCnRv28iRaMFhUzBl3Qxu+li
	A941vZN+nVMu3aGfTUZYaHg=
X-Google-Smtp-Source: ABdhPJxmm/XTAHwhCBL5wVsErTXQ60Q2H1q/UvPYRQw86PTCYewOYsTsIbg715wuldWDInkpq1jJJg==
X-Received: by 2002:a1f:264c:: with SMTP id m73mr5378830vkm.1.1628804406627;
        Thu, 12 Aug 2021 14:40:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:5e03:: with SMTP id s3ls1361765vsb.11.gmail; Thu, 12 Aug
 2021 14:40:06 -0700 (PDT)
X-Received: by 2002:a67:16c1:: with SMTP id 184mr5461618vsw.14.1628804405922;
        Thu, 12 Aug 2021 14:40:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628804405; cv=none;
        d=google.com; s=arc-20160816;
        b=UX7omMbGZDV/wQ8dNj71ZG2KNkXsMc1qtUyZ2lvUl3kq98e+/1mO+pikyrGKnKjiVj
         5h0z2L3rMFeSJzemdDVPeHsHl1gmUJY+NyFZHDPgHn3aFbR2sq9X34ZeVmn6gbVivbrB
         cwTco2fu5ABsRX/2+ULe0wvW4qmA7SmYimRW6m7Aw8vYvM4f/SYPHUjoQUMenxfUC7if
         mMNtJ7/qmRKZThbl2vdsnQK4NMW56+4do6JAirxGfvBadr9AEUVh1hqSGBI3drL+2s0v
         7Gh5CSlHW/1kH/FQ9mZLLvfUe3SeZqQeD38Yn8/Mqn0pa7hpaXN/oyHQs6QXA4KnfPfN
         zhGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=2U9F+XyVylZB3rwTeLngvWnLFZxZc2Jhvc6DZvKtj8E=;
        b=iArPWFav24DNQbIIcqUPbRdZ3rR47JfIbBDh+wMgwY+2W6QD/bQ/mdtewLxpqVr62K
         tnA93TYNcnxS3OC4voAZMu2CeqzjbsfIxYcfo5nLCL4HrCXCbjKcey8E0nyYk7QW/bZ1
         Xlq7ItoZLNrLzdYwn2wkT2r53ctDrB1pSJfMPnp03j5ULAHbZZBBtmKYQE4VUTPUKcRI
         ampYTjwRW75b1yGPFP68AcBXrAz9MR6nFXp0/EMP9H8cNm6yxgfCPZnK9TvPc2TtsHEe
         uJ+pGDm1XaPydG71+wGwVPhLnPcMprBRI4j+mRphMoPnHNgWtFs+eEHibeo6w5GqEsac
         Pk1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id k21si48996vko.3.2021.08.12.14.40.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 14:40:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="237493047"
X-IronPort-AV: E=Sophos;i="5.84,317,1620716400"; 
   d="gz'50?scan'50,208,50";a="237493047"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2021 14:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,317,1620716400"; 
   d="gz'50?scan'50,208,50";a="446705756"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 12 Aug 2021 14:40:02 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mEIQj-000N27-Tl; Thu, 12 Aug 2021 21:40:01 +0000
Date: Fri, 13 Aug 2021 05:39:08 +0800
From: kernel test robot <lkp@intel.com>
To: Hao Xu <haoxu@linux.alibaba.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Jens Axboe <axboe@kernel.dk>
Subject: [block:for-5.15/io_uring 43/45] kernel/exit.c:780:24: error: too few
 arguments to function call, single argument 'files' was not specified
Message-ID: <202108130559.AUgZZtfA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="UugvWAfsgieZRqgk"
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


--UugvWAfsgieZRqgk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-5.15/io_uring
head:   22ec865ddfba31ddf26b9d2b4a01e8437ca1f727
commit: 6a32aa46fa0b531970581d5b425514da7f9f8e46 [43/45] io_uring: remove files pointer in cancellation functions
config: s390-randconfig-r014-20210812 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 767496d19cb9a1fbba57ff08095faa161998ee36)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=6a32aa46fa0b531970581d5b425514da7f9f8e46
        git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
        git fetch --no-tags block for-5.15/io_uring
        git checkout 6a32aa46fa0b531970581d5b425514da7f9f8e46
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=s390 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/exit.c:51:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from kernel/exit.c:51:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from kernel/exit.c:51:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> kernel/exit.c:780:24: error: too few arguments to function call, single argument 'files' was not specified
           io_uring_files_cancel();
           ~~~~~~~~~~~~~~~~~~~~~ ^
   include/linux/io_uring.h:36:20: note: 'io_uring_files_cancel' declared here
   static inline void io_uring_files_cancel(struct files_struct *files)
                      ^
   12 warnings and 1 error generated.


vim +/files +780 kernel/exit.c

   726	
   727	void __noreturn do_exit(long code)
   728	{
   729		struct task_struct *tsk = current;
   730		int group_dead;
   731	
   732		/*
   733		 * We can get here from a kernel oops, sometimes with preemption off.
   734		 * Start by checking for critical errors.
   735		 * Then fix up important state like USER_DS and preemption.
   736		 * Then do everything else.
   737		 */
   738	
   739		WARN_ON(blk_needs_flush_plug(tsk));
   740	
   741		if (unlikely(in_interrupt()))
   742			panic("Aiee, killing interrupt handler!");
   743		if (unlikely(!tsk->pid))
   744			panic("Attempted to kill the idle task!");
   745	
   746		/*
   747		 * If do_exit is called because this processes oopsed, it's possible
   748		 * that get_fs() was left as KERNEL_DS, so reset it to USER_DS before
   749		 * continuing. Amongst other possible reasons, this is to prevent
   750		 * mm_release()->clear_child_tid() from writing to a user-controlled
   751		 * kernel address.
   752		 */
   753		force_uaccess_begin();
   754	
   755		if (unlikely(in_atomic())) {
   756			pr_info("note: %s[%d] exited with preempt_count %d\n",
   757				current->comm, task_pid_nr(current),
   758				preempt_count());
   759			preempt_count_set(PREEMPT_ENABLED);
   760		}
   761	
   762		profile_task_exit(tsk);
   763		kcov_task_exit(tsk);
   764	
   765		ptrace_event(PTRACE_EVENT_EXIT, code);
   766	
   767		validate_creds_for_do_exit(tsk);
   768	
   769		/*
   770		 * We're taking recursive faults here in do_exit. Safest is to just
   771		 * leave this task alone and wait for reboot.
   772		 */
   773		if (unlikely(tsk->flags & PF_EXITING)) {
   774			pr_alert("Fixing recursive fault but reboot is needed!\n");
   775			futex_exit_recursive(tsk);
   776			set_current_state(TASK_UNINTERRUPTIBLE);
   777			schedule();
   778		}
   779	
 > 780		io_uring_files_cancel();
   781		exit_signals(tsk);  /* sets PF_EXITING */
   782	
   783		/* sync mm's RSS info before statistics gathering */
   784		if (tsk->mm)
   785			sync_mm_rss(tsk->mm);
   786		acct_update_integrals(tsk);
   787		group_dead = atomic_dec_and_test(&tsk->signal->live);
   788		if (group_dead) {
   789			/*
   790			 * If the last thread of global init has exited, panic
   791			 * immediately to get a useable coredump.
   792			 */
   793			if (unlikely(is_global_init(tsk)))
   794				panic("Attempted to kill init! exitcode=0x%08x\n",
   795					tsk->signal->group_exit_code ?: (int)code);
   796	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108130559.AUgZZtfA-lkp%40intel.com.

--UugvWAfsgieZRqgk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
PMu3AAA=

--UugvWAfsgieZRqgk--
