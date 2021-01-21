Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJVOUSAAMGQE3JHAHDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 955982FE211
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 06:54:47 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id k16sf664782qve.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 21:54:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611208486; cv=pass;
        d=google.com; s=arc-20160816;
        b=xbNbDxU53GSuzp675r0VUuXbILOiyO7N18v+1ebRyh+fUKnzkWXm2fXXux/ImuDmBa
         HLXMTDB4lF9so8wGYyihVPApvJf9W0RFRbM2owc39CTOYetkQSnS3hhcYOL1WfLx4FTu
         udGGHx8qCi5CCxhMynv8dc4lS9HOrwa4Tgy2EXJowhtCpxL9CN0bUwVq/z2iOKBkhu4l
         oJ3PIp4Os6pxU0lNyCrF0Uk8y0mCKvlSgqZ0oTNAf59pNTTPFFivkw4c0r1mjeQ/RQ04
         5/ODXEehZg32HT1EONzxNy3YVm6N1FkM1dbrzZKMxQ9A959/oHuBrUz5C6h+5dJqRvcs
         PgDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=XrcLZlEo8no3fgELC1xTmj9MGVMXNGIYJ/oAhK4zreE=;
        b=L3QSYQpUxzHdRQqrGryDkfj2gN9BotSaWv2EE7MNjzZDbiOt6Syu1tJ20yQ6y3Oub3
         s0is4cX1EOE6HGidJ0aUpWjg5P6tyH4Lla+nsKIofLcxqAD5DD+OJPYVwvPB8+6vIUSJ
         0Amz3qKtzGSEUqpptN5Br6bFPYF/xPQpt154D04xeWciOYeULNm3r/lEG7ccOZx6r59z
         yKhKodVP1KdAhE/mPsl1eApE7rtPiaYxrDDDdQKKHIXu8/Tz1OthRVvNrOLNCQmx6kB5
         O8cKoR2QBVUdj7gG8GuTJhfmBYhb3gAOUTVBjrAI9UNht72nf8zcVip9XZrLCnj9Xvw6
         e4YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XrcLZlEo8no3fgELC1xTmj9MGVMXNGIYJ/oAhK4zreE=;
        b=hy5Ks17J2ug/YiLJY/Lz6qCvwfyGPLOs2VLWXcKyRq6q4IRPs60bPcgMKAkzcIMsIP
         R7VeBXzXHP5Ib6K6gOagmfPzPFakQl3P1w/c0Q6lzO+sDN++NvXZJM5DtscKnY2wU6CP
         ZQPK7dSfDLd3xItJpNQ3yzfIb2TxH2cm37fW2P1l1as2Sc/LFRry7Hbw+gEYzbedlab0
         23uSSBGa51TQr3HXOkEYDnJtd8w8x0Xf83WsHfPMiNDKHgRYPmGDMGXooZ3zCaYFZyEq
         WOnYm76zBUnzBYylP9hWtu31jQijzyAXpwwa+DC1+w7m0PfGwRcDZMwHduD9CMP+Rfaa
         oISA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XrcLZlEo8no3fgELC1xTmj9MGVMXNGIYJ/oAhK4zreE=;
        b=nFeBMPXI0QEu/yjz5NKCPGj4LNvLyqqYeEWYDhULO0HdidtUD2g2zScWaWKUrssXCf
         n5Ccz37dD24MN7qSjzACG1BD+XVrxDntmD1IAVKhQvf7UdvFwoKS3Kd9m7NKawJwCoDH
         yCaE6EPdWMA1QCslUtwNEUs3I7NMW1PGRb6GMQfG7H+yo9KtTJo/p0myx+mxY38Jd5bu
         sQne2yYISsrcqxR8i0zsfoedqwkdhp6swmeQCiaiDeX1IUTLIXvkMnQqGBILLxB/CzJ3
         wAUQFp0TEl5hjEHmGPLQCe3Egkso1ocRtwCdJNmPFvvLjW5/s4M7dyrf9+r7iYPen1xF
         CDqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lXt5KBo8cRYsI1SjwmYH+YqggticwGnp0IPh2WHu6LjhTmmtg
	ex6RnHn66TETbLvSpSYQS8Q=
X-Google-Smtp-Source: ABdhPJx6FoDnFfV3HxzDjr2LGcATR/ePpy6BCXyv4X9+EC0qT+EIkcVk3hMM/Q4si7hjWIb/tIuhuA==
X-Received: by 2002:ad4:4102:: with SMTP id i2mr8977549qvp.44.1611208486342;
        Wed, 20 Jan 2021 21:54:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3fad:: with SMTP id s42ls475065qth.2.gmail; Wed, 20 Jan
 2021 21:54:46 -0800 (PST)
X-Received: by 2002:ac8:118c:: with SMTP id d12mr12450472qtj.262.1611208485869;
        Wed, 20 Jan 2021 21:54:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611208485; cv=none;
        d=google.com; s=arc-20160816;
        b=CkMJV32yxygCPQjZea8Gt65IgU7eFtePbQwsGuP0iYzXspJjRT08tiSStV6bbbMWOQ
         FRaf94pNmJdKhwBvnuEbPZbhRV7QtNEWktrcQTN9f3VA8/Ob++rh+RFld41r6H3bbZqA
         Z3BX9X/hNKQz9B7DJtYoLBrzjM/cWA0DMVHef0lckhDRJP72U17nsUEvnpV+JmDzaAVY
         ULbKbjLsUl57JYQQ03biUQUGdkes24dYNokcCya2IDa5MCCxNFbpw/+AxUSSfMfk8XO/
         +lNeX7MT8SzdNOhiA3ejO4UCcnec2F9IR/0y7bfm+Vhl+MdpmVnSURYprH0JHlIddYBd
         yvgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=TFaPb4E9K2+vIh1hHLo9ZfxispWIWRqqC9l0hxN2zWM=;
        b=jg3FmN/vd/UQdgrwk4BnTROCNB2AYdJb1lX3PT7SGiidJ2jk7QCatOKe0J644Bn5D7
         B+h6Cf3zhgXXdOncinWZgmU5XD2mFEvqDoCyRQwlTRs/ZDh4VEgFAdtxJuIrS/GRk1pc
         U+BBAqYsQns9BMy0n96/1AeTTFltk+gFt1PLLaXu/4pdruUOwVQyTVWZYQNY2xTcj7B/
         sp/dn1VL3tOl4g91O8hJG4IOiTzWPjI8dnVy0w8UxnHJbIeH1RBgV8L9eu6pkIz5QPY0
         c59mcn4RuQ/UUQD9NzNaL4l79zllPQOhf5sUvje20jSTMua9AAnMBSV+1M27fpz1nAAf
         zMJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id h123si294999qkf.6.2021.01.20.21.54.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 21:54:45 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: 08yKNCNOQo9cg84MnUpMXXiUcgeSLu38SvG+tpqZNOMsgzj93ckHaDn2PJoFWWkmnV82pLrDsl
 DKYwgQOCF+mg==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="158401263"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; 
   d="gz'50?scan'50,208,50";a="158401263"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2021 21:54:43 -0800
IronPort-SDR: Cn6lUInyXPp8Q+lEWjKz0QDkNRXXWI0ptlfdii+2ExHH0f7FWblNUu3OOqZvrpAGYbBo3eJu6Y
 qkRZvuDDxThQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; 
   d="gz'50?scan'50,208,50";a="427197219"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 20 Jan 2021 21:54:41 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l2SvZ-0006KC-3C; Thu, 21 Jan 2021 05:54:41 +0000
Date: Thu, 21 Jan 2021 13:53:49 +0800
From: kernel test robot <lkp@intel.com>
To: Jens Axboe <axboe@kernel.dk>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Pavel Begunkov <asml.silence@gmail.com>
Subject: [block:io_uring-5.11 28/29] kernel/exit.c:780:2: error: implicit
 declaration of function 'io_uring_task_exit'
Message-ID: <202101211336.n3m4Oxkk-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--ibTvN161/egqYuK8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git io_uring-5.11
head:   ff05644c4463b85ecb4156b52263f3be1b0a89e6
commit: 412b604b15a5de0deca159e0882749f1a9530a6a [28/29] io_uring: cancel all requests on task exit
config: arm-randconfig-r005-20210121 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 22b68440e1647e16b5ee24b924986207173c02d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=412b604b15a5de0deca159e0882749f1a9530a6a
        git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
        git fetch --no-tags block io_uring-5.11
        git checkout 412b604b15a5de0deca159e0882749f1a9530a6a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/exit.c:780:2: error: implicit declaration of function 'io_uring_task_exit' [-Werror,-Wimplicit-function-declaration]
           io_uring_task_exit();
           ^
   kernel/exit.c:780:2: note: did you mean 'io_uring_task_cancel'?
   include/linux/io_uring.h:63:20: note: 'io_uring_task_cancel' declared here
   static inline void io_uring_task_cancel(void)
                      ^
   1 error generated.


vim +/io_uring_task_exit +780 kernel/exit.c

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
 > 780		io_uring_task_exit();
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101211336.n3m4Oxkk-lkp%40intel.com.

--ibTvN161/egqYuK8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ibTvN161/egqYuK8--
