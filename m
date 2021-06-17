Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3OAVWDAMGQELGHGZNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AF23AB665
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 16:47:10 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id r5-20020a2582850000b02905381b1b616esf8707602ybk.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 07:47:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623941229; cv=pass;
        d=google.com; s=arc-20160816;
        b=og6yt0QX9Tp7ZY+ggH8lRI3DjGO/wFGqj6EQv7cma04bULF4UhLAmFOFGyomVG/JWU
         ikPci/McE+BM3w+gQquNq/TwLh7KNsqtfhmk1n1wtacEKMGCg4v3vAx27lN3quRQSxGf
         7G3UNIBAx9/2pfgxfJTp/AQsYaokWlw7pbCC9nW9WsqEl84oxxn2x1poZpxUV9ZZBKuW
         7wi1NE2FNdWjLRPLRMClKkIV8UkX686LkarcCEu1hA6PO+Oqmt8Qv3RE4ousou2AAYUb
         jy6J4MmqYQchLI1qPNRrtYuULnp9f4ugMuwb17vCJws8fzmEAuBmDgN8jKtVENn6f8jE
         +aQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=kWxj5XwjogJGjElkMVBEHOPztVtnWMHpnAsJ6zsqMM8=;
        b=yYUaH8THK08i+S4hnfSSwBdAaSzpzL3L5vdCCdX7SpTC0ZKRj2QmYFtorafUbErAud
         JLyTeq2hxFXdm7v940Wi+ziO1lekIEpiS9gLurPEl2EyJ+gj0GX3KMbF0ZxXFiWclY5o
         KmNei3kboI0x/wPQAfItwo2eyuvOw7VBKSQ1V2vnKVa7YKJTMHdLyNNF8Nj2EnjFw7aF
         f6R8e0JlR2cCbGqOGvMWMndJPP1V2xoq1UrfYGJANbM46JfB2rzMvWn9gQ2pmPqXcMiB
         3H2DqOKWlSTpThf6DKDYyUOD/8kHQ6nIR4iXwvtf32s6FaehHZnw956x2sZw9f11yD11
         9BPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kWxj5XwjogJGjElkMVBEHOPztVtnWMHpnAsJ6zsqMM8=;
        b=jJId+bqKOWbN9+X4IVBBIsD7zTBTwDAIhEbUgoGsh86p4eq3FzXVyRBxp+IHsOuKCG
         e60HKghdRjHtAa3uHgvNzHHhRQ4u+XDTHJI5Lt4g/CE1rtiuTnuL6q3cY9MtPIGsY1zL
         Xu1KHfTO95ZYRca/dW+PAilKR/nXSrhIj157zIp1/O83vdPyRgBQUNXTAJbRf7yGiPqM
         69OK8qkah2ux0t3+7DpnqkxWMIEN1xVT5EqBPI8NlWP7kI15/0z2umFP4tfewk+wN54/
         XbDhlA1WEN9qQXu6EJpnOM/iH9CzHWvQLmW7YmMYgh23IdtIDz7RygRTBuApOfNMdkwO
         DT7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kWxj5XwjogJGjElkMVBEHOPztVtnWMHpnAsJ6zsqMM8=;
        b=Batyi8uWBjSdACekFeIMTodiDj81KUeH0uUA7Vp7ios0gEGR1u2iYzytblKCHbyloG
         256yziRv67UE+sn+TfrywhnQ1LbvDAIElItYiZz8CLfAya6cTMqSmNfmggtWp5aD4HFX
         vxolGJjDhdMpoqF6DmxHsSWJ1nrC0qxApQBEre+zkMZUQUlyLUJmz8Sx0K7K/AXgp2PE
         GnaIzj+qMETRICPQFW3beY0257VeqS7Aw2D2TUNoFk7hwbf8JHT/5H5xpHqJzQhvSmo7
         l3A98Hyjdbefsg0HjtQuIQ2UTDlb8zBuG6ZYQNkHjlZR1uqXKHsaAadoZC8Nfss0FRXu
         3LKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mCwgYLB7Sc57uA5n8zq7e+Vg4L6aWNREL5+fkPB9/lxu30j8U
	pyKISmZNhuzoZPz9Q8QVT/Y=
X-Google-Smtp-Source: ABdhPJxt8v2IoMejW4KSR4VV/YbAAbWliuDyeTlQa2nM0nQSyRtOQEoe8USPn2xuiWlvTuQ5uGz6UQ==
X-Received: by 2002:a25:cf15:: with SMTP id f21mr6831279ybg.366.1623941229417;
        Thu, 17 Jun 2021 07:47:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3c6:: with SMTP id 189ls3317876ybd.8.gmail; Thu, 17 Jun
 2021 07:47:08 -0700 (PDT)
X-Received: by 2002:a25:2155:: with SMTP id h82mr6556191ybh.56.1623941228658;
        Thu, 17 Jun 2021 07:47:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623941228; cv=none;
        d=google.com; s=arc-20160816;
        b=yRAag5G6lLUW+4NgSnavCfJYT2m0JBtRnFHIYFklUMbv5ugvUNNPcnXuG0gK4Gq53r
         +G9BBMF/gMUyD55EPCfozjWkjKS5glcD4pOUsm4SVZ1c2F10UIjWHfZBDY7zQiXo9Ovj
         QubectWMI+9PfVOa3kIoGoCkEvkCS9Llt7e7GMecG1LVbKqfGp303sqWtb+WfY9Mwk+w
         I4mf1hJOi5hRZmNffTan9zgbU20+l0MBvMS0qlDzm3pDT2S6977YLyjtJnjKtb+MMpbl
         ck00k3y53p/UM94v7s7Kps3aNWO4oAqalOIqrQPmdSg6EknrxIBGGO+5jil1hxIQa/v8
         2Y1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=qV+oGd/Uly4c2c4Eh2GP37mYKDVjUQaZ6uM+Mtw4M5s=;
        b=PS0M8ovkUqv1KesIwt5lgTWq9MzLP+OBhZDfg6X9DdIVgZp43VaW6qomtIPXIL9c3B
         ToBLl1aOf0qmeju6MAjaeYnEHDCwtg9Fm5BrRn6U8prkXOMogcfhZtueATeymxY2iKJs
         GxjXvObkc7X9h0DWA9QGr2659M5braFLprh34et9kMPfg1s6Cqm0idStqeZRaaeXrTMX
         0oT5e+7/6er0zUqTOGPVAlLrHykYNLAIn5TawCb71gHz6Rt9u/uKXE/Aexs6nmq51l7e
         zG7S72mJMpCAcgqnX6DnNeG9b4eJGrVv4oAXTG7ctUqC3u1mA4cfeOjAulULHjNJtwfd
         1wrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id o78si463191yba.2.2021.06.17.07.47.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Jun 2021 07:47:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: nm8W5EvN2XxosBAvbV5iBRUNYDwupYRjWxvkqh5lIc6FzSLEg5kkyGpXNGSOl3djZS6D7dkz4m
 pw388B1wGt/A==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="204554618"
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; 
   d="gz'50?scan'50,208,50";a="204554618"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2021 07:46:58 -0700
IronPort-SDR: I8Qc+Vq204Wae9FHJlhZXhwGLy0t8UZOYpcYtaweg5NefBcopRdrD6tZHlAm2b7MPH3SqOCtXO
 EpTeruxYYwZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; 
   d="gz'50?scan'50,208,50";a="451039208"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 17 Jun 2021 07:46:53 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lttIC-00026m-SA; Thu, 17 Jun 2021 14:46:52 +0000
Date: Thu, 17 Jun 2021 22:46:10 +0800
From: kernel test robot <lkp@intel.com>
To: Dave Chinner <david@fromorbit.com>, linux-xfs@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 4/8] xfs: pass a CIL context to xlog_write()
Message-ID: <202106172226.S7cfRvEB-lkp@intel.com>
References: <20210617082617.971602-5-david@fromorbit.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline
In-Reply-To: <20210617082617.971602-5-david@fromorbit.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Dave,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on xfs-linux/for-next]
[also build test WARNING on next-20210617]
[cannot apply to v5.13-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Dave-Chinner/xfs-log-fixes-for-for-next/20210617-162640
base:   https://git.kernel.org/pub/scm/fs/xfs/xfs-linux.git for-next
config: x86_64-randconfig-a011-20210617 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/fc3370002b56bcb25440b96ef5099f508c48360e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Dave-Chinner/xfs-log-fixes-for-for-next/20210617-162640
        git checkout fc3370002b56bcb25440b96ef5099f508c48360e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   fs/xfs/xfs_log_cil.c:792:1: warning: no previous prototype for function 'xlog_cil_write_commit_record' [-Wmissing-prototypes]
   xlog_cil_write_commit_record(
   ^
   fs/xfs/xfs_log_cil.c:791:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int
   ^
   static 
>> fs/xfs/xfs_log_cil.c:1130:24: warning: variable 'commit_lsn' is uninitialized when used here [-Wuninitialized]
           if (ctx->start_lsn != commit_lsn) {
                                 ^~~~~~~~~~
   fs/xfs/xfs_log_cil.c:877:23: note: initialize the variable 'commit_lsn' to silence this warning
           xfs_lsn_t               commit_lsn;
                                             ^
                                              = 0
   2 warnings generated.


vim +/commit_lsn +1130 fs/xfs/xfs_log_cil.c

be05dd0e68ac999 Dave Chinner      2021-06-08   846  
71e330b593905e4 Dave Chinner      2010-05-21   847  /*
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   848   * Push the Committed Item List to the log.
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   849   *
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   850   * If the current sequence is the same as xc_push_seq we need to do a flush. If
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   851   * xc_push_seq is less than the current sequence, then it has already been
a44f13edf0ebb4e Dave Chinner      2010-08-24   852   * flushed and we don't need to do anything - the caller will wait for it to
a44f13edf0ebb4e Dave Chinner      2010-08-24   853   * complete if necessary.
a44f13edf0ebb4e Dave Chinner      2010-08-24   854   *
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   855   * xc_push_seq is checked unlocked against the sequence number for a match.
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   856   * Hence we can allow log forces to run racily and not issue pushes for the
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   857   * same sequence twice.  If we get a race between multiple pushes for the same
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   858   * sequence they will block on the first one and then abort, hence avoiding
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   859   * needless pushes.
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   860   */
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   861  static void
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   862  xlog_cil_push_work(
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   863  	struct work_struct	*work)
71e330b593905e4 Dave Chinner      2010-05-21   864  {
facd77e4e38b8f0 Dave Chinner      2021-06-04   865  	struct xfs_cil_ctx	*ctx =
facd77e4e38b8f0 Dave Chinner      2021-06-04   866  		container_of(work, struct xfs_cil_ctx, push_work);
facd77e4e38b8f0 Dave Chinner      2021-06-04   867  	struct xfs_cil		*cil = ctx->cil;
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20   868  	struct xlog		*log = cil->xc_log;
71e330b593905e4 Dave Chinner      2010-05-21   869  	struct xfs_log_vec	*lv;
71e330b593905e4 Dave Chinner      2010-05-21   870  	struct xfs_cil_ctx	*new_ctx;
71e330b593905e4 Dave Chinner      2010-05-21   871  	struct xlog_in_core	*commit_iclog;
66fc9ffa8638be2 Dave Chinner      2021-06-04   872  	int			num_iovecs = 0;
66fc9ffa8638be2 Dave Chinner      2021-06-04   873  	int			num_bytes = 0;
71e330b593905e4 Dave Chinner      2010-05-21   874  	int			error = 0;
877cf3473914ae4 Dave Chinner      2021-06-04   875  	struct xlog_cil_trans_hdr thdr;
a47518453bf9581 Dave Chinner      2021-06-08   876  	struct xfs_log_vec	lvhdr = {};
71e330b593905e4 Dave Chinner      2010-05-21   877  	xfs_lsn_t		commit_lsn;
4c2d542f2e78653 Dave Chinner      2012-04-23   878  	xfs_lsn_t		push_seq;
0279bbbbc03f2ce Dave Chinner      2021-06-03   879  	struct bio		bio;
0279bbbbc03f2ce Dave Chinner      2021-06-03   880  	DECLARE_COMPLETION_ONSTACK(bdev_flush);
e12213ba5d909a3 Dave Chinner      2021-06-04   881  	bool			push_commit_stable;
e469cbe84f4ade9 Dave Chinner      2021-06-08   882  	struct xlog_ticket	*ticket;
71e330b593905e4 Dave Chinner      2010-05-21   883  
facd77e4e38b8f0 Dave Chinner      2021-06-04   884  	new_ctx = xlog_cil_ctx_alloc();
71e330b593905e4 Dave Chinner      2010-05-21   885  	new_ctx->ticket = xlog_cil_ticket_alloc(log);
71e330b593905e4 Dave Chinner      2010-05-21   886  
71e330b593905e4 Dave Chinner      2010-05-21   887  	down_write(&cil->xc_ctx_lock);
71e330b593905e4 Dave Chinner      2010-05-21   888  
4bb928cdb900d06 Dave Chinner      2013-08-12   889  	spin_lock(&cil->xc_push_lock);
4c2d542f2e78653 Dave Chinner      2012-04-23   890  	push_seq = cil->xc_push_seq;
4c2d542f2e78653 Dave Chinner      2012-04-23   891  	ASSERT(push_seq <= ctx->sequence);
e12213ba5d909a3 Dave Chinner      2021-06-04   892  	push_commit_stable = cil->xc_push_commit_stable;
e12213ba5d909a3 Dave Chinner      2021-06-04   893  	cil->xc_push_commit_stable = false;
71e330b593905e4 Dave Chinner      2010-05-21   894  
0e7ab7efe77451c Dave Chinner      2020-03-24   895  	/*
3682277520d6f4a Dave Chinner      2021-06-04   896  	 * As we are about to switch to a new, empty CIL context, we no longer
3682277520d6f4a Dave Chinner      2021-06-04   897  	 * need to throttle tasks on CIL space overruns. Wake any waiters that
3682277520d6f4a Dave Chinner      2021-06-04   898  	 * the hard push throttle may have caught so they can start committing
3682277520d6f4a Dave Chinner      2021-06-04   899  	 * to the new context. The ctx->xc_push_lock provides the serialisation
3682277520d6f4a Dave Chinner      2021-06-04   900  	 * necessary for safely using the lockless waitqueue_active() check in
3682277520d6f4a Dave Chinner      2021-06-04   901  	 * this context.
3682277520d6f4a Dave Chinner      2021-06-04   902  	 */
3682277520d6f4a Dave Chinner      2021-06-04   903  	if (waitqueue_active(&cil->xc_push_wait))
c7f87f3984cfa1e Dave Chinner      2020-06-16   904  		wake_up_all(&cil->xc_push_wait);
0e7ab7efe77451c Dave Chinner      2020-03-24   905  
4c2d542f2e78653 Dave Chinner      2012-04-23   906  	/*
4c2d542f2e78653 Dave Chinner      2012-04-23   907  	 * Check if we've anything to push. If there is nothing, then we don't
4c2d542f2e78653 Dave Chinner      2012-04-23   908  	 * move on to a new sequence number and so we have to be able to push
4c2d542f2e78653 Dave Chinner      2012-04-23   909  	 * this sequence again later.
4c2d542f2e78653 Dave Chinner      2012-04-23   910  	 */
0d11bae4bcf4aa9 Dave Chinner      2021-06-04   911  	if (test_bit(XLOG_CIL_EMPTY, &cil->xc_flags)) {
4c2d542f2e78653 Dave Chinner      2012-04-23   912  		cil->xc_push_seq = 0;
4bb928cdb900d06 Dave Chinner      2013-08-12   913  		spin_unlock(&cil->xc_push_lock);
a44f13edf0ebb4e Dave Chinner      2010-08-24   914  		goto out_skip;
4c2d542f2e78653 Dave Chinner      2012-04-23   915  	}
4c2d542f2e78653 Dave Chinner      2012-04-23   916  
a44f13edf0ebb4e Dave Chinner      2010-08-24   917  
cf085a1b5d22144 Joe Perches       2019-11-07   918  	/* check for a previously pushed sequence */
facd77e4e38b8f0 Dave Chinner      2021-06-04   919  	if (push_seq < ctx->sequence) {
8af3dcd3c89aef1 Dave Chinner      2014-09-23   920  		spin_unlock(&cil->xc_push_lock);
df806158b0f6eb2 Dave Chinner      2010-05-17   921  		goto out_skip;
8af3dcd3c89aef1 Dave Chinner      2014-09-23   922  	}
8af3dcd3c89aef1 Dave Chinner      2014-09-23   923  
8af3dcd3c89aef1 Dave Chinner      2014-09-23   924  	/*
8af3dcd3c89aef1 Dave Chinner      2014-09-23   925  	 * We are now going to push this context, so add it to the committing
8af3dcd3c89aef1 Dave Chinner      2014-09-23   926  	 * list before we do anything else. This ensures that anyone waiting on
8af3dcd3c89aef1 Dave Chinner      2014-09-23   927  	 * this push can easily detect the difference between a "push in
8af3dcd3c89aef1 Dave Chinner      2014-09-23   928  	 * progress" and "CIL is empty, nothing to do".
8af3dcd3c89aef1 Dave Chinner      2014-09-23   929  	 *
8af3dcd3c89aef1 Dave Chinner      2014-09-23   930  	 * IOWs, a wait loop can now check for:
8af3dcd3c89aef1 Dave Chinner      2014-09-23   931  	 *	the current sequence not being found on the committing list;
8af3dcd3c89aef1 Dave Chinner      2014-09-23   932  	 *	an empty CIL; and
8af3dcd3c89aef1 Dave Chinner      2014-09-23   933  	 *	an unchanged sequence number
8af3dcd3c89aef1 Dave Chinner      2014-09-23   934  	 * to detect a push that had nothing to do and therefore does not need
8af3dcd3c89aef1 Dave Chinner      2014-09-23   935  	 * waiting on. If the CIL is not empty, we get put on the committing
8af3dcd3c89aef1 Dave Chinner      2014-09-23   936  	 * list before emptying the CIL and bumping the sequence number. Hence
8af3dcd3c89aef1 Dave Chinner      2014-09-23   937  	 * an empty CIL and an unchanged sequence number means we jumped out
8af3dcd3c89aef1 Dave Chinner      2014-09-23   938  	 * above after doing nothing.
8af3dcd3c89aef1 Dave Chinner      2014-09-23   939  	 *
8af3dcd3c89aef1 Dave Chinner      2014-09-23   940  	 * Hence the waiter will either find the commit sequence on the
8af3dcd3c89aef1 Dave Chinner      2014-09-23   941  	 * committing list or the sequence number will be unchanged and the CIL
8af3dcd3c89aef1 Dave Chinner      2014-09-23   942  	 * still dirty. In that latter case, the push has not yet started, and
8af3dcd3c89aef1 Dave Chinner      2014-09-23   943  	 * so the waiter will have to continue trying to check the CIL
8af3dcd3c89aef1 Dave Chinner      2014-09-23   944  	 * committing list until it is found. In extreme cases of delay, the
8af3dcd3c89aef1 Dave Chinner      2014-09-23   945  	 * sequence may fully commit between the attempts the wait makes to wait
8af3dcd3c89aef1 Dave Chinner      2014-09-23   946  	 * on the commit sequence.
8af3dcd3c89aef1 Dave Chinner      2014-09-23   947  	 */
8af3dcd3c89aef1 Dave Chinner      2014-09-23   948  	list_add(&ctx->committing, &cil->xc_committing);
8af3dcd3c89aef1 Dave Chinner      2014-09-23   949  	spin_unlock(&cil->xc_push_lock);
df806158b0f6eb2 Dave Chinner      2010-05-17   950  
71e330b593905e4 Dave Chinner      2010-05-21   951  	/*
0279bbbbc03f2ce Dave Chinner      2021-06-03   952  	 * The CIL is stable at this point - nothing new will be added to it
0279bbbbc03f2ce Dave Chinner      2021-06-03   953  	 * because we hold the flush lock exclusively. Hence we can now issue
0279bbbbc03f2ce Dave Chinner      2021-06-03   954  	 * a cache flush to ensure all the completed metadata in the journal we
0279bbbbc03f2ce Dave Chinner      2021-06-03   955  	 * are about to overwrite is on stable storage.
0279bbbbc03f2ce Dave Chinner      2021-06-03   956  	 */
0279bbbbc03f2ce Dave Chinner      2021-06-03   957  	xfs_flush_bdev_async(&bio, log->l_mp->m_ddev_targp->bt_bdev,
0279bbbbc03f2ce Dave Chinner      2021-06-03   958  				&bdev_flush);
0279bbbbc03f2ce Dave Chinner      2021-06-03   959  
a8613836d99e627 Dave Chinner      2021-06-08   960  	xlog_cil_pcp_aggregate(cil, ctx);
a8613836d99e627 Dave Chinner      2021-06-08   961  
1f18c0c4b78cfb1 Dave Chinner      2021-06-08   962  	while (!list_empty(&ctx->log_items)) {
71e330b593905e4 Dave Chinner      2010-05-21   963  		struct xfs_log_item	*item;
71e330b593905e4 Dave Chinner      2010-05-21   964  
1f18c0c4b78cfb1 Dave Chinner      2021-06-08   965  		item = list_first_entry(&ctx->log_items,
71e330b593905e4 Dave Chinner      2010-05-21   966  					struct xfs_log_item, li_cil);
a47518453bf9581 Dave Chinner      2021-06-08   967  		lv = item->li_lv;
a1785f597c8b060 Dave Chinner      2021-06-08   968  		lv->lv_order_id = item->li_order_id;
a47518453bf9581 Dave Chinner      2021-06-08   969  		num_iovecs += lv->lv_niovecs;
66fc9ffa8638be2 Dave Chinner      2021-06-04   970  		/* we don't write ordered log vectors */
66fc9ffa8638be2 Dave Chinner      2021-06-04   971  		if (lv->lv_buf_len != XFS_LOG_VEC_ORDERED)
66fc9ffa8638be2 Dave Chinner      2021-06-04   972  			num_bytes += lv->lv_bytes;
a47518453bf9581 Dave Chinner      2021-06-08   973  
a47518453bf9581 Dave Chinner      2021-06-08   974  		list_add_tail(&lv->lv_list, &ctx->lv_chain);
a1785f597c8b060 Dave Chinner      2021-06-08   975  		list_del_init(&item->li_cil);
a1785f597c8b060 Dave Chinner      2021-06-08   976  		item->li_order_id = 0;
a1785f597c8b060 Dave Chinner      2021-06-08   977  		item->li_lv = NULL;
71e330b593905e4 Dave Chinner      2010-05-21   978  	}
71e330b593905e4 Dave Chinner      2010-05-21   979  
71e330b593905e4 Dave Chinner      2010-05-21   980  	/*
facd77e4e38b8f0 Dave Chinner      2021-06-04   981  	 * Switch the contexts so we can drop the context lock and move out
71e330b593905e4 Dave Chinner      2010-05-21   982  	 * of a shared context. We can't just go straight to the commit record,
71e330b593905e4 Dave Chinner      2010-05-21   983  	 * though - we need to synchronise with previous and future commits so
71e330b593905e4 Dave Chinner      2010-05-21   984  	 * that the commit records are correctly ordered in the log to ensure
71e330b593905e4 Dave Chinner      2010-05-21   985  	 * that we process items during log IO completion in the correct order.
71e330b593905e4 Dave Chinner      2010-05-21   986  	 *
71e330b593905e4 Dave Chinner      2010-05-21   987  	 * For example, if we get an EFI in one checkpoint and the EFD in the
71e330b593905e4 Dave Chinner      2010-05-21   988  	 * next (e.g. due to log forces), we do not want the checkpoint with
71e330b593905e4 Dave Chinner      2010-05-21   989  	 * the EFD to be committed before the checkpoint with the EFI.  Hence
71e330b593905e4 Dave Chinner      2010-05-21   990  	 * we must strictly order the commit records of the checkpoints so
71e330b593905e4 Dave Chinner      2010-05-21   991  	 * that: a) the checkpoint callbacks are attached to the iclogs in the
71e330b593905e4 Dave Chinner      2010-05-21   992  	 * correct order; and b) the checkpoints are replayed in correct order
71e330b593905e4 Dave Chinner      2010-05-21   993  	 * in log recovery.
71e330b593905e4 Dave Chinner      2010-05-21   994  	 *
71e330b593905e4 Dave Chinner      2010-05-21   995  	 * Hence we need to add this context to the committing context list so
71e330b593905e4 Dave Chinner      2010-05-21   996  	 * that higher sequences will wait for us to write out a commit record
71e330b593905e4 Dave Chinner      2010-05-21   997  	 * before they do.
f876e44603ad091 Dave Chinner      2014-02-27   998  	 *
f39ae5297c5ce2f Dave Chinner      2021-06-04   999  	 * xfs_log_force_seq requires us to mirror the new sequence into the cil
f876e44603ad091 Dave Chinner      2014-02-27  1000  	 * structure atomically with the addition of this sequence to the
f876e44603ad091 Dave Chinner      2014-02-27  1001  	 * committing list. This also ensures that we can do unlocked checks
f876e44603ad091 Dave Chinner      2014-02-27  1002  	 * against the current sequence in log forces without risking
f876e44603ad091 Dave Chinner      2014-02-27  1003  	 * deferencing a freed context pointer.
71e330b593905e4 Dave Chinner      2010-05-21  1004  	 */
4bb928cdb900d06 Dave Chinner      2013-08-12  1005  	spin_lock(&cil->xc_push_lock);
facd77e4e38b8f0 Dave Chinner      2021-06-04  1006  	xlog_cil_ctx_switch(cil, new_ctx);
4bb928cdb900d06 Dave Chinner      2013-08-12  1007  	spin_unlock(&cil->xc_push_lock);
71e330b593905e4 Dave Chinner      2010-05-21  1008  	up_write(&cil->xc_ctx_lock);
71e330b593905e4 Dave Chinner      2010-05-21  1009  
a1785f597c8b060 Dave Chinner      2021-06-08  1010  	/*
a1785f597c8b060 Dave Chinner      2021-06-08  1011  	 * Sort the log vector chain before we add the transaction headers.
a1785f597c8b060 Dave Chinner      2021-06-08  1012  	 * This ensures we always have the transaction headers at the start
a1785f597c8b060 Dave Chinner      2021-06-08  1013  	 * of the chain.
a1785f597c8b060 Dave Chinner      2021-06-08  1014  	 */
a1785f597c8b060 Dave Chinner      2021-06-08  1015  	list_sort(NULL, &ctx->lv_chain, xlog_cil_order_cmp);
a1785f597c8b060 Dave Chinner      2021-06-08  1016  
71e330b593905e4 Dave Chinner      2010-05-21  1017  	/*
71e330b593905e4 Dave Chinner      2010-05-21  1018  	 * Build a checkpoint transaction header and write it to the log to
71e330b593905e4 Dave Chinner      2010-05-21  1019  	 * begin the transaction. We need to account for the space used by the
71e330b593905e4 Dave Chinner      2010-05-21  1020  	 * transaction header here as it is not accounted for in xlog_write().
a47518453bf9581 Dave Chinner      2021-06-08  1021  	 * Add the lvhdr to the head of the lv chain we pass to xlog_write() so
a47518453bf9581 Dave Chinner      2021-06-08  1022  	 * it gets written into the iclog first.
71e330b593905e4 Dave Chinner      2010-05-21  1023  	 */
877cf3473914ae4 Dave Chinner      2021-06-04  1024  	xlog_cil_build_trans_hdr(ctx, &thdr, &lvhdr, num_iovecs);
66fc9ffa8638be2 Dave Chinner      2021-06-04  1025  	num_bytes += lvhdr.lv_bytes;
a47518453bf9581 Dave Chinner      2021-06-08  1026  	list_add(&lvhdr.lv_list, &ctx->lv_chain);
71e330b593905e4 Dave Chinner      2010-05-21  1027  
0279bbbbc03f2ce Dave Chinner      2021-06-03  1028  	/*
0279bbbbc03f2ce Dave Chinner      2021-06-03  1029  	 * Before we format and submit the first iclog, we have to ensure that
0279bbbbc03f2ce Dave Chinner      2021-06-03  1030  	 * the metadata writeback ordering cache flush is complete.
0279bbbbc03f2ce Dave Chinner      2021-06-03  1031  	 */
0279bbbbc03f2ce Dave Chinner      2021-06-03  1032  	wait_for_completion(&bdev_flush);
0279bbbbc03f2ce Dave Chinner      2021-06-03  1033  
877cf3473914ae4 Dave Chinner      2021-06-04  1034  	/*
877cf3473914ae4 Dave Chinner      2021-06-04  1035  	 * The LSN we need to pass to the log items on transaction commit is the
877cf3473914ae4 Dave Chinner      2021-06-04  1036  	 * LSN reported by the first log vector write, not the commit lsn. If we
877cf3473914ae4 Dave Chinner      2021-06-04  1037  	 * use the commit record lsn then we can move the tail beyond the grant
877cf3473914ae4 Dave Chinner      2021-06-04  1038  	 * write head.
877cf3473914ae4 Dave Chinner      2021-06-04  1039  	 */
fc3370002b56bcb Dave Chinner      2021-06-17  1040  	error = xlog_write(log, ctx, &ctx->lv_chain, ctx->ticket,
a47518453bf9581 Dave Chinner      2021-06-08  1041  				NULL, num_bytes);
a47518453bf9581 Dave Chinner      2021-06-08  1042  
a47518453bf9581 Dave Chinner      2021-06-08  1043  	/*
a47518453bf9581 Dave Chinner      2021-06-08  1044  	 * Take the lvhdr back off the lv_chain as it should not be passed
a47518453bf9581 Dave Chinner      2021-06-08  1045  	 * to log IO completion.
a47518453bf9581 Dave Chinner      2021-06-08  1046  	 */
a47518453bf9581 Dave Chinner      2021-06-08  1047  	list_del(&lvhdr.lv_list);
71e330b593905e4 Dave Chinner      2010-05-21  1048  	if (error)
7db37c5e6575b22 Dave Chinner      2011-01-27  1049  		goto out_abort_free_ticket;
71e330b593905e4 Dave Chinner      2010-05-21  1050  
71e330b593905e4 Dave Chinner      2010-05-21  1051  	/*
71e330b593905e4 Dave Chinner      2010-05-21  1052  	 * now that we've written the checkpoint into the log, strictly
71e330b593905e4 Dave Chinner      2010-05-21  1053  	 * order the commit records so replay will get them in the right order.
71e330b593905e4 Dave Chinner      2010-05-21  1054  	 */
71e330b593905e4 Dave Chinner      2010-05-21  1055  restart:
4bb928cdb900d06 Dave Chinner      2013-08-12  1056  	spin_lock(&cil->xc_push_lock);
71e330b593905e4 Dave Chinner      2010-05-21  1057  	list_for_each_entry(new_ctx, &cil->xc_committing, committing) {
ac983517ec5941d Dave Chinner      2014-05-07  1058  		/*
ac983517ec5941d Dave Chinner      2014-05-07  1059  		 * Avoid getting stuck in this loop because we were woken by the
ac983517ec5941d Dave Chinner      2014-05-07  1060  		 * shutdown, but then went back to sleep once already in the
ac983517ec5941d Dave Chinner      2014-05-07  1061  		 * shutdown state.
ac983517ec5941d Dave Chinner      2014-05-07  1062  		 */
ac983517ec5941d Dave Chinner      2014-05-07  1063  		if (XLOG_FORCED_SHUTDOWN(log)) {
ac983517ec5941d Dave Chinner      2014-05-07  1064  			spin_unlock(&cil->xc_push_lock);
ac983517ec5941d Dave Chinner      2014-05-07  1065  			goto out_abort_free_ticket;
ac983517ec5941d Dave Chinner      2014-05-07  1066  		}
ac983517ec5941d Dave Chinner      2014-05-07  1067  
71e330b593905e4 Dave Chinner      2010-05-21  1068  		/*
71e330b593905e4 Dave Chinner      2010-05-21  1069  		 * Higher sequences will wait for this one so skip them.
ac983517ec5941d Dave Chinner      2014-05-07  1070  		 * Don't wait for our own sequence, either.
71e330b593905e4 Dave Chinner      2010-05-21  1071  		 */
71e330b593905e4 Dave Chinner      2010-05-21  1072  		if (new_ctx->sequence >= ctx->sequence)
71e330b593905e4 Dave Chinner      2010-05-21  1073  			continue;
71e330b593905e4 Dave Chinner      2010-05-21  1074  		if (!new_ctx->commit_lsn) {
71e330b593905e4 Dave Chinner      2010-05-21  1075  			/*
71e330b593905e4 Dave Chinner      2010-05-21  1076  			 * It is still being pushed! Wait for the push to
71e330b593905e4 Dave Chinner      2010-05-21  1077  			 * complete, then start again from the beginning.
71e330b593905e4 Dave Chinner      2010-05-21  1078  			 */
4bb928cdb900d06 Dave Chinner      2013-08-12  1079  			xlog_wait(&cil->xc_commit_wait, &cil->xc_push_lock);
71e330b593905e4 Dave Chinner      2010-05-21  1080  			goto restart;
71e330b593905e4 Dave Chinner      2010-05-21  1081  		}
71e330b593905e4 Dave Chinner      2010-05-21  1082  	}
4bb928cdb900d06 Dave Chinner      2013-08-12  1083  	spin_unlock(&cil->xc_push_lock);
71e330b593905e4 Dave Chinner      2010-05-21  1084  
fc3370002b56bcb Dave Chinner      2021-06-17  1085  	error = xlog_cil_write_commit_record(ctx, &commit_iclog);
dd401770b0ff68f Dave Chinner      2020-03-25  1086  	if (error)
dd401770b0ff68f Dave Chinner      2020-03-25  1087  		goto out_abort_free_ticket;
dd401770b0ff68f Dave Chinner      2020-03-25  1088  
89ae379d564c5d8 Christoph Hellwig 2019-06-28  1089  	spin_lock(&commit_iclog->ic_callback_lock);
1858bb0bec612df Christoph Hellwig 2019-10-14  1090  	if (commit_iclog->ic_state == XLOG_STATE_IOERROR) {
89ae379d564c5d8 Christoph Hellwig 2019-06-28  1091  		spin_unlock(&commit_iclog->ic_callback_lock);
e469cbe84f4ade9 Dave Chinner      2021-06-08  1092  		goto out_abort_free_ticket;
89ae379d564c5d8 Christoph Hellwig 2019-06-28  1093  	}
89ae379d564c5d8 Christoph Hellwig 2019-06-28  1094  	ASSERT_ALWAYS(commit_iclog->ic_state == XLOG_STATE_ACTIVE ||
89ae379d564c5d8 Christoph Hellwig 2019-06-28  1095  		      commit_iclog->ic_state == XLOG_STATE_WANT_SYNC);
89ae379d564c5d8 Christoph Hellwig 2019-06-28  1096  	list_add_tail(&ctx->iclog_entry, &commit_iclog->ic_callbacks);
89ae379d564c5d8 Christoph Hellwig 2019-06-28  1097  	spin_unlock(&commit_iclog->ic_callback_lock);
71e330b593905e4 Dave Chinner      2010-05-21  1098  
71e330b593905e4 Dave Chinner      2010-05-21  1099  	/*
71e330b593905e4 Dave Chinner      2010-05-21  1100  	 * now the checkpoint commit is complete and we've attached the
71e330b593905e4 Dave Chinner      2010-05-21  1101  	 * callbacks to the iclog we can assign the commit LSN to the context
71e330b593905e4 Dave Chinner      2010-05-21  1102  	 * and wake up anyone who is waiting for the commit to complete.
71e330b593905e4 Dave Chinner      2010-05-21  1103  	 */
4bb928cdb900d06 Dave Chinner      2013-08-12  1104  	spin_lock(&cil->xc_push_lock);
eb40a87500ac2f6 Dave Chinner      2010-12-21  1105  	wake_up_all(&cil->xc_commit_wait);
4bb928cdb900d06 Dave Chinner      2013-08-12  1106  	spin_unlock(&cil->xc_push_lock);
71e330b593905e4 Dave Chinner      2010-05-21  1107  
e469cbe84f4ade9 Dave Chinner      2021-06-08  1108  	/*
e469cbe84f4ade9 Dave Chinner      2021-06-08  1109  	 * Pull the ticket off the ctx so we can ungrant it after releasing the
e469cbe84f4ade9 Dave Chinner      2021-06-08  1110  	 * commit_iclog. The ctx may be freed by the time we return from
e469cbe84f4ade9 Dave Chinner      2021-06-08  1111  	 * releasing the commit_iclog (i.e. checkpoint has been completed and
e469cbe84f4ade9 Dave Chinner      2021-06-08  1112  	 * callback run) so we can't reference the ctx after the call to
e469cbe84f4ade9 Dave Chinner      2021-06-08  1113  	 * xlog_state_release_iclog().
e469cbe84f4ade9 Dave Chinner      2021-06-08  1114  	 */
e469cbe84f4ade9 Dave Chinner      2021-06-08  1115  	ticket = ctx->ticket;
e469cbe84f4ade9 Dave Chinner      2021-06-08  1116  
5fd9256ce156ef7 Dave Chinner      2021-06-03  1117  	/*
815753dc16bbca2 Dave Chinner      2021-06-17  1118  	 * If the checkpoint spans multiple iclogs, wait for all previous iclogs
815753dc16bbca2 Dave Chinner      2021-06-17  1119  	 * to complete before we submit the commit_iclog. We can't use state
815753dc16bbca2 Dave Chinner      2021-06-17  1120  	 * checks for this - ACTIVE can be either a past completed iclog or a
815753dc16bbca2 Dave Chinner      2021-06-17  1121  	 * future iclog being filled, while WANT_SYNC through SYNC_DONE can be a
815753dc16bbca2 Dave Chinner      2021-06-17  1122  	 * past or future iclog awaiting IO or ordered IO completion to be run.
815753dc16bbca2 Dave Chinner      2021-06-17  1123  	 * In the latter case, if it's a future iclog and we wait on it, the we
815753dc16bbca2 Dave Chinner      2021-06-17  1124  	 * will hang because it won't get processed through to ic_force_wait
815753dc16bbca2 Dave Chinner      2021-06-17  1125  	 * wakeup until this commit_iclog is written to disk.  Hence we use the
815753dc16bbca2 Dave Chinner      2021-06-17  1126  	 * iclog header lsn and compare it to the commit lsn to determine if we
815753dc16bbca2 Dave Chinner      2021-06-17  1127  	 * need to wait on iclogs or not.
5fd9256ce156ef7 Dave Chinner      2021-06-03  1128  	 */
5fd9256ce156ef7 Dave Chinner      2021-06-03  1129  	spin_lock(&log->l_icloglock);
cb1acb3f3246368 Dave Chinner      2021-06-04 @1130  	if (ctx->start_lsn != commit_lsn) {
815753dc16bbca2 Dave Chinner      2021-06-17  1131  		struct xlog_in_core	*iclog;
815753dc16bbca2 Dave Chinner      2021-06-17  1132  
815753dc16bbca2 Dave Chinner      2021-06-17  1133  		for (iclog = commit_iclog->ic_prev;
815753dc16bbca2 Dave Chinner      2021-06-17  1134  		     iclog != commit_iclog;
815753dc16bbca2 Dave Chinner      2021-06-17  1135  		     iclog = iclog->ic_prev) {
815753dc16bbca2 Dave Chinner      2021-06-17  1136  			xfs_lsn_t	hlsn;
815753dc16bbca2 Dave Chinner      2021-06-17  1137  
815753dc16bbca2 Dave Chinner      2021-06-17  1138  			/*
815753dc16bbca2 Dave Chinner      2021-06-17  1139  			 * If the LSN of the iclog is zero or in the future it
815753dc16bbca2 Dave Chinner      2021-06-17  1140  			 * means it has passed through IO completion and
815753dc16bbca2 Dave Chinner      2021-06-17  1141  			 * activation and hence all previous iclogs have also
815753dc16bbca2 Dave Chinner      2021-06-17  1142  			 * done so. We do not need to wait at all in this case.
815753dc16bbca2 Dave Chinner      2021-06-17  1143  			 */
815753dc16bbca2 Dave Chinner      2021-06-17  1144  			hlsn = be64_to_cpu(iclog->ic_header.h_lsn);
815753dc16bbca2 Dave Chinner      2021-06-17  1145  			if (!hlsn || XFS_LSN_CMP(hlsn, commit_lsn) > 0)
815753dc16bbca2 Dave Chinner      2021-06-17  1146  				break;
815753dc16bbca2 Dave Chinner      2021-06-17  1147  
815753dc16bbca2 Dave Chinner      2021-06-17  1148  			/*
815753dc16bbca2 Dave Chinner      2021-06-17  1149  			 * If the LSN of the iclog is older than the commit lsn,
815753dc16bbca2 Dave Chinner      2021-06-17  1150  			 * we have to wait on it. Waiting on this via the
815753dc16bbca2 Dave Chinner      2021-06-17  1151  			 * ic_force_wait should also order the completion of all
815753dc16bbca2 Dave Chinner      2021-06-17  1152  			 * older iclogs, too, but we leave checking that to the
815753dc16bbca2 Dave Chinner      2021-06-17  1153  			 * next loop iteration.
815753dc16bbca2 Dave Chinner      2021-06-17  1154  			 */
815753dc16bbca2 Dave Chinner      2021-06-17  1155  			ASSERT(XFS_LSN_CMP(hlsn, commit_lsn) < 0);
815753dc16bbca2 Dave Chinner      2021-06-17  1156  			xlog_wait_on_iclog(iclog);
cb1acb3f3246368 Dave Chinner      2021-06-04  1157  			spin_lock(&log->l_icloglock);
815753dc16bbca2 Dave Chinner      2021-06-17  1158  		}
815753dc16bbca2 Dave Chinner      2021-06-17  1159  
815753dc16bbca2 Dave Chinner      2021-06-17  1160  		/*
815753dc16bbca2 Dave Chinner      2021-06-17  1161  		 * Regardless of whether we need to wait or not, the the
815753dc16bbca2 Dave Chinner      2021-06-17  1162  		 * commit_iclog write needs to issue a pre-flush so that the
815753dc16bbca2 Dave Chinner      2021-06-17  1163  		 * ordering for this checkpoint is correctly preserved down to
815753dc16bbca2 Dave Chinner      2021-06-17  1164  		 * stable storage.
815753dc16bbca2 Dave Chinner      2021-06-17  1165  		 */
cb1acb3f3246368 Dave Chinner      2021-06-04  1166  		commit_iclog->ic_flags |= XLOG_ICL_NEED_FLUSH;
5fd9256ce156ef7 Dave Chinner      2021-06-03  1167  	}
5fd9256ce156ef7 Dave Chinner      2021-06-03  1168  
cb1acb3f3246368 Dave Chinner      2021-06-04  1169  	/*
cb1acb3f3246368 Dave Chinner      2021-06-04  1170  	 * The commit iclog must be written to stable storage to guarantee
cb1acb3f3246368 Dave Chinner      2021-06-04  1171  	 * journal IO vs metadata writeback IO is correctly ordered on stable
cb1acb3f3246368 Dave Chinner      2021-06-04  1172  	 * storage.
e12213ba5d909a3 Dave Chinner      2021-06-04  1173  	 *
e12213ba5d909a3 Dave Chinner      2021-06-04  1174  	 * If the push caller needs the commit to be immediately stable and the
e12213ba5d909a3 Dave Chinner      2021-06-04  1175  	 * commit_iclog is not yet marked as XLOG_STATE_WANT_SYNC to indicate it
e12213ba5d909a3 Dave Chinner      2021-06-04  1176  	 * will be written when released, switch it's state to WANT_SYNC right
e12213ba5d909a3 Dave Chinner      2021-06-04  1177  	 * now.
cb1acb3f3246368 Dave Chinner      2021-06-04  1178  	 */
cb1acb3f3246368 Dave Chinner      2021-06-04  1179  	commit_iclog->ic_flags |= XLOG_ICL_NEED_FUA;
e12213ba5d909a3 Dave Chinner      2021-06-04  1180  	if (push_commit_stable && commit_iclog->ic_state == XLOG_STATE_ACTIVE)
e12213ba5d909a3 Dave Chinner      2021-06-04  1181  		xlog_state_switch_iclogs(log, commit_iclog, 0);
e469cbe84f4ade9 Dave Chinner      2021-06-08  1182  	xlog_state_release_iclog(log, commit_iclog, ticket);
cb1acb3f3246368 Dave Chinner      2021-06-04  1183  	spin_unlock(&log->l_icloglock);
e469cbe84f4ade9 Dave Chinner      2021-06-08  1184  
e469cbe84f4ade9 Dave Chinner      2021-06-08  1185  	xfs_log_ticket_ungrant(log, ticket);
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20  1186  	return;
71e330b593905e4 Dave Chinner      2010-05-21  1187  
71e330b593905e4 Dave Chinner      2010-05-21  1188  out_skip:
71e330b593905e4 Dave Chinner      2010-05-21  1189  	up_write(&cil->xc_ctx_lock);
71e330b593905e4 Dave Chinner      2010-05-21  1190  	xfs_log_ticket_put(new_ctx->ticket);
71e330b593905e4 Dave Chinner      2010-05-21  1191  	kmem_free(new_ctx);
c7cc296ddd1f6d1 Christoph Hellwig 2020-03-20  1192  	return;
71e330b593905e4 Dave Chinner      2010-05-21  1193  
7db37c5e6575b22 Dave Chinner      2011-01-27  1194  out_abort_free_ticket:
877cf3473914ae4 Dave Chinner      2021-06-04  1195  	xfs_log_ticket_ungrant(log, ctx->ticket);
12e6a0f449d585b Christoph Hellwig 2020-03-20  1196  	ASSERT(XLOG_FORCED_SHUTDOWN(log));
12e6a0f449d585b Christoph Hellwig 2020-03-20  1197  	xlog_cil_committed(ctx);
4c2d542f2e78653 Dave Chinner      2012-04-23  1198  }
4c2d542f2e78653 Dave Chinner      2012-04-23  1199  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106172226.S7cfRvEB-lkp%40intel.com.

--TB36FDmn/VVEgNH/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--TB36FDmn/VVEgNH/--
