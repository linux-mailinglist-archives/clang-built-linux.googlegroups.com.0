Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHGY4KCQMGQEV2RJALQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E4A399EB7
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 12:17:03 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id j8-20020a17090a8408b02901651fe80217sf2529402pjn.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 03:17:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622715421; cv=pass;
        d=google.com; s=arc-20160816;
        b=DmSah1i7rMM2BOONRfwPUSDiJM/vGBmNCJ48eiY3ekvd6OTQRM/VvOkkrBVxCER9aU
         16o+MpvqzuXXbOv78gnP6lUI6YTVajsBdvPgocU1WKB83rOxSzjetWBlnzwkG7XZkYTt
         KWuTOS2UhsZtUlno57egM9mGNjyJpvUW8teSbV8qyTQAv7D7BEwOXzPnfswTpQMRVHbv
         hRjkCitzHBMdvYj9Bx3LCuU4uAH2t+RM+QZBnGYSUWrUZ+xEo3FKajFi1h3tISThj3xN
         oLb2IV5aNvoF5oHzJftEZq6CVeRDrD0BEU6SxCVOUu6sghP5B2VNkWYRgPslJ+0gK2tX
         /+jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=49XD3e8+zmEn7qED9Fd7+kTfsLYidQuvWI+TVsLPFjw=;
        b=g/hsBMi1VM/xXqFsOUze92CBnAQDLnr0Rh87Xv99qTCcEYXvO7X46BsWv0zi0aC7QV
         zV2pIaS18JN0/PJK6MuafGowAonxzzyblUcWLWxcmLaAbr2dJ7X8M5oCb1qlClbyZJZq
         O/9xrpjign4Ny9EhY1JxwkJ198cCLx2O0FZrFeV171DxZ4XtSqOJxCUCR0rHbBqPAH4/
         OvRhqQT5SSFpQs+XW3jSJnwjToCycdbHHVLg5mVhfRZ+m1aBN4fCL3pAR4/Pm5afV68V
         o1TCtcZ3HaQgQ0dpQBNrDRMPdnGbi2CV0pahmtrkT37lPpu9G8GHZWoUvbUHr+EZFNKQ
         FqxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49XD3e8+zmEn7qED9Fd7+kTfsLYidQuvWI+TVsLPFjw=;
        b=KinGbL6oCScwE8Z/7HNjFAymka5OSRElVh88HUP4v7appKxdcMnr/1ZXNcaX4mEmNT
         dhSzgtIaGV/BnIJX1UeUIEG+qARYANQ+5DpRukVsCLYHmyvQe6rESeC4TOtsxNmtpA0j
         DaxahhKuFI4QULPZF73ajRbeWorMVwOAz/sfkkceyoNaTn+BMJsNz6iNi/vO5k1GntBp
         qTBbsQhwlZSryIihIJtYBAZwEM1ru/Vyagaylp4sVl4Ma4qf1e616ySCENrAlvXINPpS
         McoLMgee0oIze4qkeyaG1Cigzi+l1zu7AJKwVEqSD7WRoxnV6rAhxXc5EbWWl+Rc4g80
         jPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49XD3e8+zmEn7qED9Fd7+kTfsLYidQuvWI+TVsLPFjw=;
        b=oRf5mLedgYGSoFIvKFpvjD99kl6RUiKLFOB9hrRoiOaDyT9fKw8x8RP/mQjopvHan7
         r76MQD7aTI1QcR2+dylRuxPmEB3lQCuUAmTgbDtuWnX92wvlUdCofI8HTWmW841f24+H
         Gb3Di3A05U4nYExPFd/40TtX2YSyP/sgidJ+T3Tx35hLrr2U8BMtPs3OY6cV3wQCWE7G
         HLX8A0IpykHzat2j71FgVmgF+NWY1Fx+n2NT4TjvLBQWcZ5zWWohJ8eRWBqkfC+miOjw
         SeIG6eihJeWG/PU5LfqSFLP994PEjyiWf2Lh8ViralczyiK35jlZBGU9LaCYpA7C/YrK
         o3OA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uAwlr8i6Z0IeNiuV4gE3e8CioocvpjHtA7LVe+rfi9PnKTZM2
	PiwY9hu5YWHnR9MZLx31OuQ=
X-Google-Smtp-Source: ABdhPJw1rrsKYwU6dwQpnaT/yprkuUr3QE81QX57C8jDRHgB6KLuj6+2n8Hum5w+UjC/8LzU6HBdNw==
X-Received: by 2002:a62:1547:0:b029:2e9:f6d7:776a with SMTP id 68-20020a6215470000b02902e9f6d7776amr13518662pfv.14.1622715420661;
        Thu, 03 Jun 2021 03:17:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b81:: with SMTP id y1ls1608969plp.1.gmail; Thu, 03
 Jun 2021 03:16:59 -0700 (PDT)
X-Received: by 2002:a17:902:e20a:b029:109:ed31:ad68 with SMTP id u10-20020a170902e20ab0290109ed31ad68mr9248801plb.33.1622715419647;
        Thu, 03 Jun 2021 03:16:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622715419; cv=none;
        d=google.com; s=arc-20160816;
        b=esbo3Jxo5TShtSMGIYNRZWDKz7Cvw3MLthhuiozC0dKW+kxpsYzxUOBSnp2tZNysE5
         FISEBrCELoMGyp2IHAbAvrRcq7GNCmzao9yj6Jw0oUlsdP53zNAuOgvImjzECDIx5Xcz
         2HJ+6gakPae7aCCSMGvaL31oai98vLyYjeFB8AUxd0liJ90cTecfVosOuAp0cZgOAR+h
         ycgLqVtbEgZKKZrmIsV+XBFPBEnSb5WzwJrjO+JCWkxTnAILEl4+Aa0ecG9EQBBlS98u
         4wDsniita/xGIi3eAyN3y1nUJ22JglUz0Ms+ooFBPKz4CrRN8zy0ZDDpr9cVPZHir6iW
         ZdWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=/r0V9NSyIhS+72lN+4s3SDKX07OrqJ0j7MKCcKqlYgk=;
        b=JVv7vZLgKZ0x+FVtBCDHious/Iaf/85aaioqGNHcU3qTXs/ba2j4yoMCe33eOKEIz5
         70f6xCdoQAVJaBUjqiysSnujiG2+BgH4lveJIKUu/LGlQXLfGovDg+f+GcjKhgkWncTI
         84mmtpfqVfg9iJkSZZ1bJTv5QUk8jhtpo5OXbVDz6gGzHeoxyT+So+XGaWtQcKQIuDj+
         bzBUUZtIejKnHb4wKNDOs4oRX85KHanULhKxscz2Yl9QSalCfJJ7WTyztcqmgJj9Ov0P
         yh9B4C9LpO7MybVcbNcHywD2QlheQlbWZ0toebltf12pyqmVyQYF85ffa9IMB7DDaA3E
         6PZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id o20si445029pgv.1.2021.06.03.03.16.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 03:16:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: giX+R8yF5aol9I3cZi0ab0s769+YKKq3NEW5VvJC4rcKscBBZMFtSacm1xyGRtkczhxOOz6jFS
 ZeYGQBzAM1JA==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="267876412"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; 
   d="gz'50?scan'50,208,50";a="267876412"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2021 03:16:57 -0700
IronPort-SDR: gqnqtzS5fj1DADkxhB+8BxUL0ThxLTfumqg2ffF+1jlqdOLXK06YompYp6gtqjZG4w25kP4Wg1
 Ar4rhGKop6vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; 
   d="gz'50?scan'50,208,50";a="475025500"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 03 Jun 2021 03:16:55 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lokPG-00069c-JC; Thu, 03 Jun 2021 10:16:54 +0000
Date: Thu, 3 Jun 2021 18:16:41 +0800
From: kernel test robot <lkp@intel.com>
To: Dave Chinner <david@fromorbit.com>, linux-xfs@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 35/39] xfs: convert log vector chain to use list heads
Message-ID: <202106031844.nHvax4Cf-lkp@intel.com>
References: <20210603052240.171998-36-david@fromorbit.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline
In-Reply-To: <20210603052240.171998-36-david@fromorbit.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Dave,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on xfs-linux/for-next]
[also build test WARNING on linus/master v5.13-rc4 next-20210602]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Dave-Chinner/xfs-CIL-and-log-optimisations/20210603-134113
base:   https://git.kernel.org/pub/scm/fs/xfs/xfs-linux.git for-next
config: arm-randconfig-r023-20210603 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d8e0ae9a76a62bdc6117630d59bf9967ac9bb4ea)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/b9844caa1f30dfae6f4e78de2b70126ba2898eda
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Dave-Chinner/xfs-CIL-and-log-optimisations/20210603-134113
        git checkout b9844caa1f30dfae6f4e78de2b70126ba2898eda
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/xfs/xfs_log_cil.c:836:31: warning: suggest braces around initialization of subobject [-Wmissing-braces]
           struct xfs_log_vec      lvhdr = { NULL };
                                             ^~~~
                                             {   }
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   fs/xfs/xfs_log_cil.c:1550:30: error: invalid operands to binary expression ('void' and 'int')
           if (xlog_cil_pcp_hpadd(cil) < 0) {
               ~~~~~~~~~~~~~~~~~~~~~~~ ^ ~
   1 warning and 1 error generated.


vim +836 fs/xfs/xfs_log_cil.c

08a813aea7434e Dave Chinner      2021-06-03   806  
71e330b593905e Dave Chinner      2010-05-21   807  /*
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   808   * Push the Committed Item List to the log.
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   809   *
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   810   * If the current sequence is the same as xc_push_seq we need to do a flush. If
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   811   * xc_push_seq is less than the current sequence, then it has already been
a44f13edf0ebb4 Dave Chinner      2010-08-24   812   * flushed and we don't need to do anything - the caller will wait for it to
a44f13edf0ebb4 Dave Chinner      2010-08-24   813   * complete if necessary.
a44f13edf0ebb4 Dave Chinner      2010-08-24   814   *
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   815   * xc_push_seq is checked unlocked against the sequence number for a match.
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   816   * Hence we can allow log forces to run racily and not issue pushes for the
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   817   * same sequence twice.  If we get a race between multiple pushes for the same
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   818   * sequence they will block on the first one and then abort, hence avoiding
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   819   * needless pushes.
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   820   */
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   821  static void
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   822  xlog_cil_push_work(
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   823  	struct work_struct	*work)
71e330b593905e Dave Chinner      2010-05-21   824  {
61691dab98fb92 Dave Chinner      2021-06-03   825  	struct xfs_cil_ctx	*ctx =
61691dab98fb92 Dave Chinner      2021-06-03   826  		container_of(work, struct xfs_cil_ctx, push_work);
61691dab98fb92 Dave Chinner      2021-06-03   827  	struct xfs_cil		*cil = ctx->cil;
c7cc296ddd1f6d Christoph Hellwig 2020-03-20   828  	struct xlog		*log = cil->xc_log;
71e330b593905e Dave Chinner      2010-05-21   829  	struct xfs_log_vec	*lv;
71e330b593905e Dave Chinner      2010-05-21   830  	struct xfs_cil_ctx	*new_ctx;
71e330b593905e Dave Chinner      2010-05-21   831  	struct xlog_in_core	*commit_iclog;
964c4f5053f0cd Dave Chinner      2021-06-03   832  	int			num_iovecs = 0;
964c4f5053f0cd Dave Chinner      2021-06-03   833  	int			num_bytes = 0;
71e330b593905e Dave Chinner      2010-05-21   834  	int			error = 0;
81be7bf64fac48 Dave Chinner      2021-06-03   835  	struct xlog_cil_trans_hdr thdr;
71e330b593905e Dave Chinner      2010-05-21  @836  	struct xfs_log_vec	lvhdr = { NULL };
71e330b593905e Dave Chinner      2010-05-21   837  	xfs_lsn_t		commit_lsn;
4c2d542f2e7865 Dave Chinner      2012-04-23   838  	xfs_lsn_t		push_seq;
395ce53dd09e23 Dave Chinner      2021-06-03   839  	struct bio		bio;
395ce53dd09e23 Dave Chinner      2021-06-03   840  	DECLARE_COMPLETION_ONSTACK(bdev_flush);
ed3d678659f2f3 Dave Chinner      2021-06-03   841  	bool			push_commit_stable;
71e330b593905e Dave Chinner      2010-05-21   842  
61691dab98fb92 Dave Chinner      2021-06-03   843  	new_ctx = xlog_cil_ctx_alloc();
71e330b593905e Dave Chinner      2010-05-21   844  	new_ctx->ticket = xlog_cil_ticket_alloc(log);
71e330b593905e Dave Chinner      2010-05-21   845  
71e330b593905e Dave Chinner      2010-05-21   846  	down_write(&cil->xc_ctx_lock);
71e330b593905e Dave Chinner      2010-05-21   847  
4bb928cdb900d0 Dave Chinner      2013-08-12   848  	spin_lock(&cil->xc_push_lock);
4c2d542f2e7865 Dave Chinner      2012-04-23   849  	push_seq = cil->xc_push_seq;
4c2d542f2e7865 Dave Chinner      2012-04-23   850  	ASSERT(push_seq <= ctx->sequence);
ed3d678659f2f3 Dave Chinner      2021-06-03   851  	push_commit_stable = cil->xc_push_commit_stable;
ed3d678659f2f3 Dave Chinner      2021-06-03   852  	cil->xc_push_commit_stable = false;
71e330b593905e Dave Chinner      2010-05-21   853  
0e7ab7efe77451 Dave Chinner      2020-03-24   854  	/*
1ac67445c59a8e Dave Chinner      2021-06-03   855  	 * As we are about to switch to a new, empty CIL context, we no longer
1ac67445c59a8e Dave Chinner      2021-06-03   856  	 * need to throttle tasks on CIL space overruns. Wake any waiters that
1ac67445c59a8e Dave Chinner      2021-06-03   857  	 * the hard push throttle may have caught so they can start committing
1ac67445c59a8e Dave Chinner      2021-06-03   858  	 * to the new context. The ctx->xc_push_lock provides the serialisation
1ac67445c59a8e Dave Chinner      2021-06-03   859  	 * necessary for safely using the lockless waitqueue_active() check in
1ac67445c59a8e Dave Chinner      2021-06-03   860  	 * this context.
1ac67445c59a8e Dave Chinner      2021-06-03   861  	 */
1ac67445c59a8e Dave Chinner      2021-06-03   862  	if (waitqueue_active(&cil->xc_push_wait))
c7f87f3984cfa1 Dave Chinner      2020-06-16   863  		wake_up_all(&cil->xc_push_wait);
0e7ab7efe77451 Dave Chinner      2020-03-24   864  
4c2d542f2e7865 Dave Chinner      2012-04-23   865  	/*
4c2d542f2e7865 Dave Chinner      2012-04-23   866  	 * Check if we've anything to push. If there is nothing, then we don't
4c2d542f2e7865 Dave Chinner      2012-04-23   867  	 * move on to a new sequence number and so we have to be able to push
4c2d542f2e7865 Dave Chinner      2012-04-23   868  	 * this sequence again later.
4c2d542f2e7865 Dave Chinner      2012-04-23   869  	 */
b8fab3c5759918 Dave Chinner      2021-06-03   870  	if (test_bit(XLOG_CIL_EMPTY, &cil->xc_flags)) {
4c2d542f2e7865 Dave Chinner      2012-04-23   871  		cil->xc_push_seq = 0;
4bb928cdb900d0 Dave Chinner      2013-08-12   872  		spin_unlock(&cil->xc_push_lock);
a44f13edf0ebb4 Dave Chinner      2010-08-24   873  		goto out_skip;
4c2d542f2e7865 Dave Chinner      2012-04-23   874  	}
4c2d542f2e7865 Dave Chinner      2012-04-23   875  
a44f13edf0ebb4 Dave Chinner      2010-08-24   876  
cf085a1b5d2214 Joe Perches       2019-11-07   877  	/* check for a previously pushed sequence */
61691dab98fb92 Dave Chinner      2021-06-03   878  	if (push_seq < ctx->sequence) {
8af3dcd3c89aef Dave Chinner      2014-09-23   879  		spin_unlock(&cil->xc_push_lock);
df806158b0f6eb Dave Chinner      2010-05-17   880  		goto out_skip;
8af3dcd3c89aef Dave Chinner      2014-09-23   881  	}
8af3dcd3c89aef Dave Chinner      2014-09-23   882  
8af3dcd3c89aef Dave Chinner      2014-09-23   883  	/*
8af3dcd3c89aef Dave Chinner      2014-09-23   884  	 * We are now going to push this context, so add it to the committing
8af3dcd3c89aef Dave Chinner      2014-09-23   885  	 * list before we do anything else. This ensures that anyone waiting on
8af3dcd3c89aef Dave Chinner      2014-09-23   886  	 * this push can easily detect the difference between a "push in
8af3dcd3c89aef Dave Chinner      2014-09-23   887  	 * progress" and "CIL is empty, nothing to do".
8af3dcd3c89aef Dave Chinner      2014-09-23   888  	 *
8af3dcd3c89aef Dave Chinner      2014-09-23   889  	 * IOWs, a wait loop can now check for:
8af3dcd3c89aef Dave Chinner      2014-09-23   890  	 *	the current sequence not being found on the committing list;
8af3dcd3c89aef Dave Chinner      2014-09-23   891  	 *	an empty CIL; and
8af3dcd3c89aef Dave Chinner      2014-09-23   892  	 *	an unchanged sequence number
8af3dcd3c89aef Dave Chinner      2014-09-23   893  	 * to detect a push that had nothing to do and therefore does not need
8af3dcd3c89aef Dave Chinner      2014-09-23   894  	 * waiting on. If the CIL is not empty, we get put on the committing
8af3dcd3c89aef Dave Chinner      2014-09-23   895  	 * list before emptying the CIL and bumping the sequence number. Hence
8af3dcd3c89aef Dave Chinner      2014-09-23   896  	 * an empty CIL and an unchanged sequence number means we jumped out
8af3dcd3c89aef Dave Chinner      2014-09-23   897  	 * above after doing nothing.
8af3dcd3c89aef Dave Chinner      2014-09-23   898  	 *
8af3dcd3c89aef Dave Chinner      2014-09-23   899  	 * Hence the waiter will either find the commit sequence on the
8af3dcd3c89aef Dave Chinner      2014-09-23   900  	 * committing list or the sequence number will be unchanged and the CIL
8af3dcd3c89aef Dave Chinner      2014-09-23   901  	 * still dirty. In that latter case, the push has not yet started, and
8af3dcd3c89aef Dave Chinner      2014-09-23   902  	 * so the waiter will have to continue trying to check the CIL
8af3dcd3c89aef Dave Chinner      2014-09-23   903  	 * committing list until it is found. In extreme cases of delay, the
8af3dcd3c89aef Dave Chinner      2014-09-23   904  	 * sequence may fully commit between the attempts the wait makes to wait
8af3dcd3c89aef Dave Chinner      2014-09-23   905  	 * on the commit sequence.
8af3dcd3c89aef Dave Chinner      2014-09-23   906  	 */
8af3dcd3c89aef Dave Chinner      2014-09-23   907  	list_add(&ctx->committing, &cil->xc_committing);
8af3dcd3c89aef Dave Chinner      2014-09-23   908  	spin_unlock(&cil->xc_push_lock);
df806158b0f6eb Dave Chinner      2010-05-17   909  
71e330b593905e Dave Chinner      2010-05-21   910  	/*
395ce53dd09e23 Dave Chinner      2021-06-03   911  	 * The CIL is stable at this point - nothing new will be added to it
395ce53dd09e23 Dave Chinner      2021-06-03   912  	 * because we hold the flush lock exclusively. Hence we can now issue
395ce53dd09e23 Dave Chinner      2021-06-03   913  	 * a cache flush to ensure all the completed metadata in the journal we
395ce53dd09e23 Dave Chinner      2021-06-03   914  	 * are about to overwrite is on stable storage.
395ce53dd09e23 Dave Chinner      2021-06-03   915  	 */
395ce53dd09e23 Dave Chinner      2021-06-03   916  	xfs_flush_bdev_async(&bio, log->l_mp->m_ddev_targp->bt_bdev,
395ce53dd09e23 Dave Chinner      2021-06-03   917  				&bdev_flush);
395ce53dd09e23 Dave Chinner      2021-06-03   918  
4da22b91f10349 Dave Chinner      2021-06-03   919  	xlog_cil_pcp_aggregate(cil, ctx);
4da22b91f10349 Dave Chinner      2021-06-03   920  
3bf44a60c84eae Dave Chinner      2021-06-03   921  	list_sort(NULL, &ctx->log_items, xlog_cil_order_cmp);
3bf44a60c84eae Dave Chinner      2021-06-03   922  	while (!list_empty(&ctx->log_items)) {
71e330b593905e Dave Chinner      2010-05-21   923  		struct xfs_log_item	*item;
71e330b593905e Dave Chinner      2010-05-21   924  
3bf44a60c84eae Dave Chinner      2021-06-03   925  		item = list_first_entry(&ctx->log_items,
71e330b593905e Dave Chinner      2010-05-21   926  					struct xfs_log_item, li_cil);
b9844caa1f30df Dave Chinner      2021-06-03   927  		lv = item->li_lv;
71e330b593905e Dave Chinner      2010-05-21   928  		list_del_init(&item->li_cil);
08a813aea7434e Dave Chinner      2021-06-03   929  		item->li_order_id = 0;
71e330b593905e Dave Chinner      2010-05-21   930  		item->li_lv = NULL;
964c4f5053f0cd Dave Chinner      2021-06-03   931  
b9844caa1f30df Dave Chinner      2021-06-03   932  		num_iovecs += lv->lv_niovecs;
964c4f5053f0cd Dave Chinner      2021-06-03   933  		/* we don't write ordered log vectors */
964c4f5053f0cd Dave Chinner      2021-06-03   934  		if (lv->lv_buf_len != XFS_LOG_VEC_ORDERED)
964c4f5053f0cd Dave Chinner      2021-06-03   935  			num_bytes += lv->lv_bytes;
b9844caa1f30df Dave Chinner      2021-06-03   936  
b9844caa1f30df Dave Chinner      2021-06-03   937  		list_add_tail(&lv->lv_list, &ctx->lv_chain);
b9844caa1f30df Dave Chinner      2021-06-03   938  
71e330b593905e Dave Chinner      2010-05-21   939  	}
71e330b593905e Dave Chinner      2010-05-21   940  
71e330b593905e Dave Chinner      2010-05-21   941  	/*
61691dab98fb92 Dave Chinner      2021-06-03   942  	 * Switch the contexts so we can drop the context lock and move out
71e330b593905e Dave Chinner      2010-05-21   943  	 * of a shared context. We can't just go straight to the commit record,
71e330b593905e Dave Chinner      2010-05-21   944  	 * though - we need to synchronise with previous and future commits so
71e330b593905e Dave Chinner      2010-05-21   945  	 * that the commit records are correctly ordered in the log to ensure
71e330b593905e Dave Chinner      2010-05-21   946  	 * that we process items during log IO completion in the correct order.
71e330b593905e Dave Chinner      2010-05-21   947  	 *
71e330b593905e Dave Chinner      2010-05-21   948  	 * For example, if we get an EFI in one checkpoint and the EFD in the
71e330b593905e Dave Chinner      2010-05-21   949  	 * next (e.g. due to log forces), we do not want the checkpoint with
71e330b593905e Dave Chinner      2010-05-21   950  	 * the EFD to be committed before the checkpoint with the EFI.  Hence
71e330b593905e Dave Chinner      2010-05-21   951  	 * we must strictly order the commit records of the checkpoints so
71e330b593905e Dave Chinner      2010-05-21   952  	 * that: a) the checkpoint callbacks are attached to the iclogs in the
71e330b593905e Dave Chinner      2010-05-21   953  	 * correct order; and b) the checkpoints are replayed in correct order
71e330b593905e Dave Chinner      2010-05-21   954  	 * in log recovery.
71e330b593905e Dave Chinner      2010-05-21   955  	 *
71e330b593905e Dave Chinner      2010-05-21   956  	 * Hence we need to add this context to the committing context list so
71e330b593905e Dave Chinner      2010-05-21   957  	 * that higher sequences will wait for us to write out a commit record
71e330b593905e Dave Chinner      2010-05-21   958  	 * before they do.
f876e44603ad09 Dave Chinner      2014-02-27   959  	 *
015de1f284aa49 Dave Chinner      2021-06-03   960  	 * xfs_log_force_seq requires us to mirror the new sequence into the cil
f876e44603ad09 Dave Chinner      2014-02-27   961  	 * structure atomically with the addition of this sequence to the
f876e44603ad09 Dave Chinner      2014-02-27   962  	 * committing list. This also ensures that we can do unlocked checks
f876e44603ad09 Dave Chinner      2014-02-27   963  	 * against the current sequence in log forces without risking
f876e44603ad09 Dave Chinner      2014-02-27   964  	 * deferencing a freed context pointer.
71e330b593905e Dave Chinner      2010-05-21   965  	 */
4bb928cdb900d0 Dave Chinner      2013-08-12   966  	spin_lock(&cil->xc_push_lock);
61691dab98fb92 Dave Chinner      2021-06-03   967  	xlog_cil_ctx_switch(cil, new_ctx);
4bb928cdb900d0 Dave Chinner      2013-08-12   968  	spin_unlock(&cil->xc_push_lock);
71e330b593905e Dave Chinner      2010-05-21   969  	up_write(&cil->xc_ctx_lock);
71e330b593905e Dave Chinner      2010-05-21   970  
71e330b593905e Dave Chinner      2010-05-21   971  	/*
71e330b593905e Dave Chinner      2010-05-21   972  	 * Build a checkpoint transaction header and write it to the log to
71e330b593905e Dave Chinner      2010-05-21   973  	 * begin the transaction. We need to account for the space used by the
71e330b593905e Dave Chinner      2010-05-21   974  	 * transaction header here as it is not accounted for in xlog_write().
b9844caa1f30df Dave Chinner      2021-06-03   975  	 * Add the lvhdr to the head of the lv chain we pass to xlog_write() so
b9844caa1f30df Dave Chinner      2021-06-03   976  	 * it gets written into the iclog first.
71e330b593905e Dave Chinner      2010-05-21   977  	 */
81be7bf64fac48 Dave Chinner      2021-06-03   978  	xlog_cil_build_trans_hdr(ctx, &thdr, &lvhdr, num_iovecs);
964c4f5053f0cd Dave Chinner      2021-06-03   979  	num_bytes += lvhdr.lv_bytes;
b9844caa1f30df Dave Chinner      2021-06-03   980  	list_add(&lvhdr.lv_list, &ctx->lv_chain);
71e330b593905e Dave Chinner      2010-05-21   981  
395ce53dd09e23 Dave Chinner      2021-06-03   982  	/*
395ce53dd09e23 Dave Chinner      2021-06-03   983  	 * Before we format and submit the first iclog, we have to ensure that
395ce53dd09e23 Dave Chinner      2021-06-03   984  	 * the metadata writeback ordering cache flush is complete.
395ce53dd09e23 Dave Chinner      2021-06-03   985  	 */
395ce53dd09e23 Dave Chinner      2021-06-03   986  	wait_for_completion(&bdev_flush);
395ce53dd09e23 Dave Chinner      2021-06-03   987  
81be7bf64fac48 Dave Chinner      2021-06-03   988  	/*
81be7bf64fac48 Dave Chinner      2021-06-03   989  	 * The LSN we need to pass to the log items on transaction commit is the
81be7bf64fac48 Dave Chinner      2021-06-03   990  	 * LSN reported by the first log vector write, not the commit lsn. If we
81be7bf64fac48 Dave Chinner      2021-06-03   991  	 * use the commit record lsn then we can move the tail beyond the grant
81be7bf64fac48 Dave Chinner      2021-06-03   992  	 * write head.
81be7bf64fac48 Dave Chinner      2021-06-03   993  	 */
b9844caa1f30df Dave Chinner      2021-06-03   994  	error = xlog_write(log, &ctx->lv_chain, ctx->ticket, &ctx->start_lsn,
b9844caa1f30df Dave Chinner      2021-06-03   995  				NULL, num_bytes);
b9844caa1f30df Dave Chinner      2021-06-03   996  
b9844caa1f30df Dave Chinner      2021-06-03   997  	/*
b9844caa1f30df Dave Chinner      2021-06-03   998  	 * Take the lvhdr back off the lv_chain as it should not be passed
b9844caa1f30df Dave Chinner      2021-06-03   999  	 * to log IO completion.
b9844caa1f30df Dave Chinner      2021-06-03  1000  	 */
b9844caa1f30df Dave Chinner      2021-06-03  1001  	list_del(&lvhdr.lv_list);
71e330b593905e Dave Chinner      2010-05-21  1002  	if (error)
7db37c5e6575b2 Dave Chinner      2011-01-27  1003  		goto out_abort_free_ticket;
71e330b593905e Dave Chinner      2010-05-21  1004  
71e330b593905e Dave Chinner      2010-05-21  1005  	/*
71e330b593905e Dave Chinner      2010-05-21  1006  	 * now that we've written the checkpoint into the log, strictly
71e330b593905e Dave Chinner      2010-05-21  1007  	 * order the commit records so replay will get them in the right order.
71e330b593905e Dave Chinner      2010-05-21  1008  	 */
71e330b593905e Dave Chinner      2010-05-21  1009  restart:
4bb928cdb900d0 Dave Chinner      2013-08-12  1010  	spin_lock(&cil->xc_push_lock);
71e330b593905e Dave Chinner      2010-05-21  1011  	list_for_each_entry(new_ctx, &cil->xc_committing, committing) {
ac983517ec5941 Dave Chinner      2014-05-07  1012  		/*
ac983517ec5941 Dave Chinner      2014-05-07  1013  		 * Avoid getting stuck in this loop because we were woken by the
ac983517ec5941 Dave Chinner      2014-05-07  1014  		 * shutdown, but then went back to sleep once already in the
ac983517ec5941 Dave Chinner      2014-05-07  1015  		 * shutdown state.
ac983517ec5941 Dave Chinner      2014-05-07  1016  		 */
ac983517ec5941 Dave Chinner      2014-05-07  1017  		if (XLOG_FORCED_SHUTDOWN(log)) {
ac983517ec5941 Dave Chinner      2014-05-07  1018  			spin_unlock(&cil->xc_push_lock);
ac983517ec5941 Dave Chinner      2014-05-07  1019  			goto out_abort_free_ticket;
ac983517ec5941 Dave Chinner      2014-05-07  1020  		}
ac983517ec5941 Dave Chinner      2014-05-07  1021  
71e330b593905e Dave Chinner      2010-05-21  1022  		/*
71e330b593905e Dave Chinner      2010-05-21  1023  		 * Higher sequences will wait for this one so skip them.
ac983517ec5941 Dave Chinner      2014-05-07  1024  		 * Don't wait for our own sequence, either.
71e330b593905e Dave Chinner      2010-05-21  1025  		 */
71e330b593905e Dave Chinner      2010-05-21  1026  		if (new_ctx->sequence >= ctx->sequence)
71e330b593905e Dave Chinner      2010-05-21  1027  			continue;
71e330b593905e Dave Chinner      2010-05-21  1028  		if (!new_ctx->commit_lsn) {
71e330b593905e Dave Chinner      2010-05-21  1029  			/*
71e330b593905e Dave Chinner      2010-05-21  1030  			 * It is still being pushed! Wait for the push to
71e330b593905e Dave Chinner      2010-05-21  1031  			 * complete, then start again from the beginning.
71e330b593905e Dave Chinner      2010-05-21  1032  			 */
4bb928cdb900d0 Dave Chinner      2013-08-12  1033  			xlog_wait(&cil->xc_commit_wait, &cil->xc_push_lock);
71e330b593905e Dave Chinner      2010-05-21  1034  			goto restart;
71e330b593905e Dave Chinner      2010-05-21  1035  		}
71e330b593905e Dave Chinner      2010-05-21  1036  	}
4bb928cdb900d0 Dave Chinner      2013-08-12  1037  	spin_unlock(&cil->xc_push_lock);
71e330b593905e Dave Chinner      2010-05-21  1038  
81be7bf64fac48 Dave Chinner      2021-06-03  1039  	error = xlog_commit_record(log, ctx->ticket, &commit_iclog, &commit_lsn);
dd401770b0ff68 Dave Chinner      2020-03-25  1040  	if (error)
dd401770b0ff68 Dave Chinner      2020-03-25  1041  		goto out_abort_free_ticket;
dd401770b0ff68 Dave Chinner      2020-03-25  1042  
81be7bf64fac48 Dave Chinner      2021-06-03  1043  	xfs_log_ticket_ungrant(log, ctx->ticket);
71e330b593905e Dave Chinner      2010-05-21  1044  
89ae379d564c5d Christoph Hellwig 2019-06-28  1045  	spin_lock(&commit_iclog->ic_callback_lock);
1858bb0bec612d Christoph Hellwig 2019-10-14  1046  	if (commit_iclog->ic_state == XLOG_STATE_IOERROR) {
89ae379d564c5d Christoph Hellwig 2019-06-28  1047  		spin_unlock(&commit_iclog->ic_callback_lock);
71e330b593905e Dave Chinner      2010-05-21  1048  		goto out_abort;
89ae379d564c5d Christoph Hellwig 2019-06-28  1049  	}
89ae379d564c5d Christoph Hellwig 2019-06-28  1050  	ASSERT_ALWAYS(commit_iclog->ic_state == XLOG_STATE_ACTIVE ||
89ae379d564c5d Christoph Hellwig 2019-06-28  1051  		      commit_iclog->ic_state == XLOG_STATE_WANT_SYNC);
89ae379d564c5d Christoph Hellwig 2019-06-28  1052  	list_add_tail(&ctx->iclog_entry, &commit_iclog->ic_callbacks);
89ae379d564c5d Christoph Hellwig 2019-06-28  1053  	spin_unlock(&commit_iclog->ic_callback_lock);
71e330b593905e Dave Chinner      2010-05-21  1054  
71e330b593905e Dave Chinner      2010-05-21  1055  	/*
71e330b593905e Dave Chinner      2010-05-21  1056  	 * now the checkpoint commit is complete and we've attached the
71e330b593905e Dave Chinner      2010-05-21  1057  	 * callbacks to the iclog we can assign the commit LSN to the context
71e330b593905e Dave Chinner      2010-05-21  1058  	 * and wake up anyone who is waiting for the commit to complete.
71e330b593905e Dave Chinner      2010-05-21  1059  	 */
4bb928cdb900d0 Dave Chinner      2013-08-12  1060  	spin_lock(&cil->xc_push_lock);
71e330b593905e Dave Chinner      2010-05-21  1061  	ctx->commit_lsn = commit_lsn;
eb40a87500ac2f Dave Chinner      2010-12-21  1062  	wake_up_all(&cil->xc_commit_wait);
4bb928cdb900d0 Dave Chinner      2013-08-12  1063  	spin_unlock(&cil->xc_push_lock);
71e330b593905e Dave Chinner      2010-05-21  1064  
bde964f7e822cc Dave Chinner      2021-06-03  1065  	/*
bde964f7e822cc Dave Chinner      2021-06-03  1066  	 * If the checkpoint spans multiple iclogs, wait for all previous
80d287de7b49ed Dave Chinner      2021-06-03  1067  	 * iclogs to complete before we submit the commit_iclog. In this case,
80d287de7b49ed Dave Chinner      2021-06-03  1068  	 * the commit_iclog write needs to issue a pre-flush so that the
80d287de7b49ed Dave Chinner      2021-06-03  1069  	 * ordering is correctly preserved down to stable storage.
bde964f7e822cc Dave Chinner      2021-06-03  1070  	 */
bde964f7e822cc Dave Chinner      2021-06-03  1071  	spin_lock(&log->l_icloglock);
80d287de7b49ed Dave Chinner      2021-06-03  1072  	if (ctx->start_lsn != commit_lsn) {
bde964f7e822cc Dave Chinner      2021-06-03  1073  		xlog_wait_on_iclog(commit_iclog->ic_prev);
80d287de7b49ed Dave Chinner      2021-06-03  1074  		spin_lock(&log->l_icloglock);
80d287de7b49ed Dave Chinner      2021-06-03  1075  		commit_iclog->ic_flags |= XLOG_ICL_NEED_FLUSH;
bde964f7e822cc Dave Chinner      2021-06-03  1076  	}
bde964f7e822cc Dave Chinner      2021-06-03  1077  
80d287de7b49ed Dave Chinner      2021-06-03  1078  	/*
80d287de7b49ed Dave Chinner      2021-06-03  1079  	 * The commit iclog must be written to stable storage to guarantee
80d287de7b49ed Dave Chinner      2021-06-03  1080  	 * journal IO vs metadata writeback IO is correctly ordered on stable
80d287de7b49ed Dave Chinner      2021-06-03  1081  	 * storage.
ed3d678659f2f3 Dave Chinner      2021-06-03  1082  	 *
ed3d678659f2f3 Dave Chinner      2021-06-03  1083  	 * If the push caller needs the commit to be immediately stable and the
ed3d678659f2f3 Dave Chinner      2021-06-03  1084  	 * commit_iclog is not yet marked as XLOG_STATE_WANT_SYNC to indicate it
ed3d678659f2f3 Dave Chinner      2021-06-03  1085  	 * will be written when released, switch it's state to WANT_SYNC right
ed3d678659f2f3 Dave Chinner      2021-06-03  1086  	 * now.
80d287de7b49ed Dave Chinner      2021-06-03  1087  	 */
80d287de7b49ed Dave Chinner      2021-06-03  1088  	commit_iclog->ic_flags |= XLOG_ICL_NEED_FUA;
ed3d678659f2f3 Dave Chinner      2021-06-03  1089  	if (push_commit_stable && commit_iclog->ic_state == XLOG_STATE_ACTIVE)
ed3d678659f2f3 Dave Chinner      2021-06-03  1090  		xlog_state_switch_iclogs(log, commit_iclog, 0);
80d287de7b49ed Dave Chinner      2021-06-03  1091  	xlog_state_release_iclog(log, commit_iclog);
80d287de7b49ed Dave Chinner      2021-06-03  1092  	spin_unlock(&log->l_icloglock);
c7cc296ddd1f6d Christoph Hellwig 2020-03-20  1093  	return;
71e330b593905e Dave Chinner      2010-05-21  1094  
71e330b593905e Dave Chinner      2010-05-21  1095  out_skip:
71e330b593905e Dave Chinner      2010-05-21  1096  	up_write(&cil->xc_ctx_lock);
71e330b593905e Dave Chinner      2010-05-21  1097  	xfs_log_ticket_put(new_ctx->ticket);
71e330b593905e Dave Chinner      2010-05-21  1098  	kmem_free(new_ctx);
c7cc296ddd1f6d Christoph Hellwig 2020-03-20  1099  	return;
71e330b593905e Dave Chinner      2010-05-21  1100  
7db37c5e6575b2 Dave Chinner      2011-01-27  1101  out_abort_free_ticket:
81be7bf64fac48 Dave Chinner      2021-06-03  1102  	xfs_log_ticket_ungrant(log, ctx->ticket);
71e330b593905e Dave Chinner      2010-05-21  1103  out_abort:
12e6a0f449d585 Christoph Hellwig 2020-03-20  1104  	ASSERT(XLOG_FORCED_SHUTDOWN(log));
12e6a0f449d585 Christoph Hellwig 2020-03-20  1105  	xlog_cil_committed(ctx);
4c2d542f2e7865 Dave Chinner      2012-04-23  1106  }
4c2d542f2e7865 Dave Chinner      2012-04-23  1107  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106031844.nHvax4Cf-lkp%40intel.com.

--YZ5djTAD1cGYuMQK
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Ap14idHJ8n+OhJPTSdcBAA==

--YZ5djTAD1cGYuMQK--
