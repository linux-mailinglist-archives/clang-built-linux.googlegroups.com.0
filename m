Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBU56V2AQMGQEM2GNY2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A1C31C8D8
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 11:32:52 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id 68sf9657893pfe.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 02:32:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613471571; cv=pass;
        d=google.com; s=arc-20160816;
        b=fTEw6cNdTuBTWADnhdhwh680lC0ED0bheZ5lAUZBSuodSQ/DLUYp0PU7KpwmyRleOa
         KYZkgZYtyGoR5E7ALVq+5qB46Ci50YgepB3ptBB1zeNjszjoRZe3JV257NUxgvK2hM5I
         k91K7muovsqVrXxwKOiPDnfzKhKaRFzTdU50Doi5B/5916DW7hdnltuRgHTrU0tfUGPk
         ZaTu2l2Znf4AQtucJdTCKxH58VYyem2cz5I9P2mzE4iPZ4gbe+FWL7a2t+Km0qLU7DR3
         AxzfDnkUDVnhCs9uNFPumaRqXazJYaOkgt8DzJZzl3snRM29P9IqFRVOZAGQBMNl1isV
         fn7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=++bkTCTvOolj/x/M4v6vn9R7zXh970qDT7Zsj3X9lL4=;
        b=qfU0IdvSf6Lbi4bbfZ/5Q/1FxWzDKsN77uIyYKZ/uZ45PlmEnlyAJlWPYQskr+hy9X
         jcnC1WT4KlL1dmlE1VWwCLXh2UfaTOH8fpeA6AKWBNj7jUQLqYnx/0/7pcEYSbfqxaez
         8nTV+2l3KC872zQFFPtSQ0S2s/NvCP1LbxY5R6c5PTxEpPmu+43hD6gWs1cB9XiD7GvS
         zy5jNoFYfETLScTV49GpWogCQroGuOrPcaOqyjpggt4qcYHN2OomgLroCa0hqQvv3W4w
         wz6PUWq4pEjCxJnAkfo9F+Tj4blgkehGeseJnl5bvBUNAoF5nZDpX/xPH+hkygi7ifNn
         rYhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=++bkTCTvOolj/x/M4v6vn9R7zXh970qDT7Zsj3X9lL4=;
        b=gp0uiEKJZGgkqRX0iw45R0RPDdMo8J+OhzYzZq8EKN8+mTLbrBMtYhUnmdoICOOG08
         g3GXleITdXH9HK2uMe+amO5lCrFSj+/Xqutntdv9rgh8TFBtVaO66LT+XOFW3Zz3//Lh
         VN+OimTQJiUVQbg45j+bqnJ4GKQNTA9wel7Tvlu2IMQLlMh6JtNDwlqtis4/vhFmAhdy
         uo9p9K6IlCnCVCG9bzkhPUZDpyzevPl44lnv4aIPqDOwZBH6quZG/wEZHZ0Bmlu/vLYf
         oOzcvQcwUrCtXe2ffcT6omQTZYiGutPG8zel6GmIig7yGjq93ZDOTiqU50z1bDreg42K
         D5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=++bkTCTvOolj/x/M4v6vn9R7zXh970qDT7Zsj3X9lL4=;
        b=Pb1G3LgFRYvoljB/Ktr7uyv4MwPduIAHT//XjoVQ01MbFUSN+ufw+hO2hd0uwbg5uP
         hC6c1jMlIpd5yejhdkccu4AKlEtdqTZdkwMCSrt3bShjGgDisTRYZrkSZ7mgvWHjoLJf
         V7+EMxTtm3po9R1PZ417TdeiTWiNtaVwb+t3pCDWtMtnsZHb81yigQFzHEELv6at3+gS
         Nr1HBNP97u+bMNEEDNTT6b16oShT/WakpiNeKYwDZExa/TaIj4N84NWotcZx7wy7q4yL
         M3u8aPKLxFJ2WMAeHz/nDXSC/Wy6NbYIWA6sWG9hz1IypnniFLW8Drp9fnPFDBNh1x8M
         YRzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331MmNN8TQomG0KIzsElk3UZU0zW8Ye5eygltA7pS/hhyKCKMMW
	Df9xiR9o67kI4t8x9zlJYfY=
X-Google-Smtp-Source: ABdhPJxnrsVRiOAWIRyR9sm9nI1z4jRdyn8zaNe/DFePUKi0Cu437X1RCijBp5GAcCxn2mzEMc3k1w==
X-Received: by 2002:a63:4458:: with SMTP id t24mr17358668pgk.173.1613471571373;
        Tue, 16 Feb 2021 02:32:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f84:: with SMTP id q4ls1461086pjh.0.canary-gmail;
 Tue, 16 Feb 2021 02:32:50 -0800 (PST)
X-Received: by 2002:a17:902:e5cc:b029:df:bc77:3aba with SMTP id u12-20020a170902e5ccb02900dfbc773abamr19532705plf.72.1613471570563;
        Tue, 16 Feb 2021 02:32:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613471570; cv=none;
        d=google.com; s=arc-20160816;
        b=qGPhfnb7XEw3YYWpVAWYbXkP8zFp2aju9mX35jw0Gr5d+QTi5CIp98BCbYcRbUjEFf
         AkrSuaahGvTrwKdaGlwguzmhAKd6QagMoRoGVLynMynvUCbiUKbdYgP/JU24SMe7v7n5
         0uZzBBy3PajwRGkvO5L/rKwTefZXqTWhzpGIr86h0iiu4GSJAQDb/MxasMXbiYMJcAEi
         ra4l5Pet0D14fITALb4syEc4HpBWxCo0nLS9n+sGlIDn4ZCvFBrbHkEBe9LUM9Tf9OCb
         rY2GDu3M+fDc0K2cbM1yebRSj8O2Fyr9VnY9yDupBwXHcEbpJyn5mSqwswL45bvQrXZF
         Hl0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=HcQhy4thdH4mohKunMNAwT9OYDyXZFZGEEKMNEwhB3c=;
        b=PaRdOOl/pVMIE8DkraJ/cy0rNICLZA4MYK71Be6azzyVHq7DrWTh0LXMSWJNe4rMYC
         aGP5SL5Bqq3HtjJqihu2LN0v+/Ui4kQZH8wZyNrkGOhH2tO7kBP1qd+UmD61/myh/f5Q
         WXTywh2OTOa147eEkFxEB1QZtpHV/6os+uwivopklMMXKLQhZsBx7V/m6IuzQjG1kd6y
         AOeYGxY51wuVKYycja39fPNRfxGAQlKCqDoCd+T3cdssX0xAZ5ee3TDLHKmBzq6Xytg7
         NCs/bPzRsPCPeXP6LKae8XcjDhaBICz6goIKgfuDUNPowtcV1L/51uweQNF7EcscElPj
         jyvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id q21si1300315pgt.3.2021.02.16.02.32.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2021 02:32:50 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: NgHEmxya64wKM6SZqY12wzgl5uxRnlxKH7UXI0oJN+KAv0tn1cV+gnin/h+Jo6UA7EsKDes4Xv
 HLPno0DX4Cdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9896"; a="162619599"
X-IronPort-AV: E=Sophos;i="5.81,183,1610438400"; 
   d="gz'50?scan'50,208,50";a="162619599"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2021 02:32:49 -0800
IronPort-SDR: lQnn/K9xGJdBGyPmNUvpK4uOdNvbhx9GJzi06coGVs7o752g2uAOt3G7VZV2891yX5TVngB9fS
 9WJlqP/VhwPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,183,1610438400"; 
   d="gz'50?scan'50,208,50";a="512470275"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 16 Feb 2021 02:32:46 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lBxev-0008A8-IP; Tue, 16 Feb 2021 10:32:45 +0000
Date: Tue, 16 Feb 2021 18:32:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Chandan Babu R <chandanrlinux@gmail.com>,
	Sasha Levin <alexander.levin@microsoft.com>
Subject: [linux-stable-rc:linux-4.19.y 1850/3205] fs/xfs/xfs_rtalloc.c:875:1:
 warning: stack frame size of 1104 bytes in function 'xfs_growfs_rt'
Message-ID: <202102161822.x8gEREeZ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
head:   a4346d5d945c303262908275419f3e36d888fea7
commit: bda64b43564ac3eca39202db4f1462487ca4a6bf [1850/3205] xfs: fix realtime bitmap/summary file truncation when growing rt volume
config: powerpc64-randconfig-r031-20210215 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=bda64b43564ac3eca39202db4f1462487ca4a6bf
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-4.19.y
        git checkout bda64b43564ac3eca39202db4f1462487ca4a6bf
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/xfs/xfs_rtalloc.c:875:1: warning: stack frame size of 1104 bytes in function 'xfs_growfs_rt' [-Wframe-larger-than=]
   xfs_growfs_rt(
   ^
   1 warning generated.


vim +/xfs_growfs_rt +875 fs/xfs/xfs_rtalloc.c

^1da177e4c3f41 Linus Torvalds      2005-04-16   866  
^1da177e4c3f41 Linus Torvalds      2005-04-16   867  /*
^1da177e4c3f41 Linus Torvalds      2005-04-16   868   * Visible (exported) functions.
^1da177e4c3f41 Linus Torvalds      2005-04-16   869   */
^1da177e4c3f41 Linus Torvalds      2005-04-16   870  
^1da177e4c3f41 Linus Torvalds      2005-04-16   871  /*
^1da177e4c3f41 Linus Torvalds      2005-04-16   872   * Grow the realtime area of the filesystem.
^1da177e4c3f41 Linus Torvalds      2005-04-16   873   */
^1da177e4c3f41 Linus Torvalds      2005-04-16   874  int
^1da177e4c3f41 Linus Torvalds      2005-04-16  @875  xfs_growfs_rt(
^1da177e4c3f41 Linus Torvalds      2005-04-16   876  	xfs_mount_t	*mp,		/* mount point for filesystem */
^1da177e4c3f41 Linus Torvalds      2005-04-16   877  	xfs_growfs_rt_t	*in)		/* growfs rt input struct */
^1da177e4c3f41 Linus Torvalds      2005-04-16   878  {
^1da177e4c3f41 Linus Torvalds      2005-04-16   879  	xfs_rtblock_t	bmbno;		/* bitmap block number */
^1da177e4c3f41 Linus Torvalds      2005-04-16   880  	xfs_buf_t	*bp;		/* temporary buffer */
^1da177e4c3f41 Linus Torvalds      2005-04-16   881  	int		error;		/* error return value */
^1da177e4c3f41 Linus Torvalds      2005-04-16   882  	xfs_mount_t	*nmp;		/* new (fake) mount structure */
d5cf09baced0ef Christoph Hellwig   2014-07-30   883  	xfs_rfsblock_t	nrblocks;	/* new number of realtime blocks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   884  	xfs_extlen_t	nrbmblocks;	/* new number of rt bitmap blocks */
d5cf09baced0ef Christoph Hellwig   2014-07-30   885  	xfs_rtblock_t	nrextents;	/* new number of realtime extents */
^1da177e4c3f41 Linus Torvalds      2005-04-16   886  	uint8_t		nrextslog;	/* new log2 of sb_rextents */
^1da177e4c3f41 Linus Torvalds      2005-04-16   887  	xfs_extlen_t	nrsumblocks;	/* new number of summary blocks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   888  	uint		nrsumlevels;	/* new rt summary levels */
^1da177e4c3f41 Linus Torvalds      2005-04-16   889  	uint		nrsumsize;	/* new size of rt summary, bytes */
^1da177e4c3f41 Linus Torvalds      2005-04-16   890  	xfs_sb_t	*nsbp;		/* new superblock */
^1da177e4c3f41 Linus Torvalds      2005-04-16   891  	xfs_extlen_t	rbmblocks;	/* current number of rt bitmap blocks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   892  	xfs_extlen_t	rsumblocks;	/* current number of rt summary blks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   893  	xfs_sb_t	*sbp;		/* old superblock */
^1da177e4c3f41 Linus Torvalds      2005-04-16   894  	xfs_fsblock_t	sumbno;		/* summary block number */
^1da177e4c3f41 Linus Torvalds      2005-04-16   895  
^1da177e4c3f41 Linus Torvalds      2005-04-16   896  	sbp = &mp->m_sb;
^1da177e4c3f41 Linus Torvalds      2005-04-16   897  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   898  	 * Initial error checking.
^1da177e4c3f41 Linus Torvalds      2005-04-16   899  	 */
743bb4650da9e2 sandeen@sandeen.net 2008-11-25   900  	if (!capable(CAP_SYS_ADMIN))
2451337dd04390 Dave Chinner        2014-06-25   901  		return -EPERM;
73024cf11522c0 Eric Sesterhenn     2006-06-28   902  	if (mp->m_rtdev_targp == NULL || mp->m_rbmip == NULL ||
^1da177e4c3f41 Linus Torvalds      2005-04-16   903  	    (nrblocks = in->newblocks) <= sbp->sb_rblocks ||
^1da177e4c3f41 Linus Torvalds      2005-04-16   904  	    (sbp->sb_rblocks && (in->extsize != sbp->sb_rextsize)))
2451337dd04390 Dave Chinner        2014-06-25   905  		return -EINVAL;
4cc929ee305c69 Nathan Scott        2007-05-14   906  	if ((error = xfs_sb_validate_fsb_count(sbp, nrblocks)))
4cc929ee305c69 Nathan Scott        2007-05-14   907  		return error;
^1da177e4c3f41 Linus Torvalds      2005-04-16   908  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   909  	 * Read in the last block of the device, make sure it exists.
^1da177e4c3f41 Linus Torvalds      2005-04-16   910  	 */
ba3726742c1712 Dave Chinner        2014-10-02   911  	error = xfs_buf_read_uncached(mp->m_rtdev_targp,
4cc929ee305c69 Nathan Scott        2007-05-14   912  				XFS_FSB_TO_BB(mp, nrblocks - 1),
ba3726742c1712 Dave Chinner        2014-10-02   913  				XFS_FSB_TO_BB(mp, 1), 0, &bp, NULL);
ba3726742c1712 Dave Chinner        2014-10-02   914  	if (error)
eab4e63368b4cf Dave Chinner        2012-11-12   915  		return error;
^1da177e4c3f41 Linus Torvalds      2005-04-16   916  	xfs_buf_relse(bp);
1922c949c59f93 Dave Chinner        2010-09-22   917  
^1da177e4c3f41 Linus Torvalds      2005-04-16   918  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   919  	 * Calculate new parameters.  These are the final values to be reached.
^1da177e4c3f41 Linus Torvalds      2005-04-16   920  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   921  	nrextents = nrblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16   922  	do_div(nrextents, in->extsize);
68c3271515f11f Nathan Scott        2006-09-28   923  	nrbmblocks = howmany_64(nrextents, NBBY * sbp->sb_blocksize);
^1da177e4c3f41 Linus Torvalds      2005-04-16   924  	nrextslog = xfs_highbit32(nrextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16   925  	nrsumlevels = nrextslog + 1;
^1da177e4c3f41 Linus Torvalds      2005-04-16   926  	nrsumsize = (uint)sizeof(xfs_suminfo_t) * nrsumlevels * nrbmblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16   927  	nrsumblocks = XFS_B_TO_FSB(mp, nrsumsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16   928  	nrsumsize = XFS_FSB_TO_B(mp, nrsumblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16   929  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   930  	 * New summary size can't be more than half the size of
^1da177e4c3f41 Linus Torvalds      2005-04-16   931  	 * the log.  This prevents us from getting a log overflow,
^1da177e4c3f41 Linus Torvalds      2005-04-16   932  	 * since we'll log basically the whole summary file at once.
^1da177e4c3f41 Linus Torvalds      2005-04-16   933  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   934  	if (nrsumblocks > (mp->m_sb.sb_logblocks >> 1))
2451337dd04390 Dave Chinner        2014-06-25   935  		return -EINVAL;
^1da177e4c3f41 Linus Torvalds      2005-04-16   936  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   937  	 * Get the old block counts for bitmap and summary inodes.
^1da177e4c3f41 Linus Torvalds      2005-04-16   938  	 * These can't change since other growfs callers are locked out.
^1da177e4c3f41 Linus Torvalds      2005-04-16   939  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   940  	rbmblocks = XFS_B_TO_FSB(mp, mp->m_rbmip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16   941  	rsumblocks = XFS_B_TO_FSB(mp, mp->m_rsumip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16   942  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   943  	 * Allocate space to the bitmap and summary files, as necessary.
^1da177e4c3f41 Linus Torvalds      2005-04-16   944  	 */
1050c71e2925ab Christoph Hellwig   2011-02-13   945  	error = xfs_growfs_rt_alloc(mp, rbmblocks, nrbmblocks, mp->m_rbmip);
1050c71e2925ab Christoph Hellwig   2011-02-13   946  	if (error)
^1da177e4c3f41 Linus Torvalds      2005-04-16   947  		return error;
1050c71e2925ab Christoph Hellwig   2011-02-13   948  	error = xfs_growfs_rt_alloc(mp, rsumblocks, nrsumblocks, mp->m_rsumip);
1050c71e2925ab Christoph Hellwig   2011-02-13   949  	if (error)
^1da177e4c3f41 Linus Torvalds      2005-04-16   950  		return error;
d432c80e68e3c2 Nathan Scott        2006-09-28   951  	/*
d432c80e68e3c2 Nathan Scott        2006-09-28   952  	 * Allocate a new (fake) mount/sb.
d432c80e68e3c2 Nathan Scott        2006-09-28   953  	 */
d432c80e68e3c2 Nathan Scott        2006-09-28   954  	nmp = kmem_alloc(sizeof(*nmp), KM_SLEEP);
^1da177e4c3f41 Linus Torvalds      2005-04-16   955  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   956  	 * Loop over the bitmap blocks.
^1da177e4c3f41 Linus Torvalds      2005-04-16   957  	 * We will do everything one bitmap block at a time.
^1da177e4c3f41 Linus Torvalds      2005-04-16   958  	 * Skip the current block if it is exactly full.
^1da177e4c3f41 Linus Torvalds      2005-04-16   959  	 * This also deals with the case where there were no rtextents before.
^1da177e4c3f41 Linus Torvalds      2005-04-16   960  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   961  	for (bmbno = sbp->sb_rbmblocks -
^1da177e4c3f41 Linus Torvalds      2005-04-16   962  		     ((sbp->sb_rextents & ((1 << mp->m_blkbit_log) - 1)) != 0);
^1da177e4c3f41 Linus Torvalds      2005-04-16   963  	     bmbno < nrbmblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16   964  	     bmbno++) {
0924b585fc49bf Dave Chinner        2008-11-28   965  		xfs_trans_t	*tp;
0924b585fc49bf Dave Chinner        2008-11-28   966  
^1da177e4c3f41 Linus Torvalds      2005-04-16   967  		*nmp = *mp;
^1da177e4c3f41 Linus Torvalds      2005-04-16   968  		nsbp = &nmp->m_sb;
^1da177e4c3f41 Linus Torvalds      2005-04-16   969  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   970  		 * Calculate new sb and mount fields for this round.
^1da177e4c3f41 Linus Torvalds      2005-04-16   971  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   972  		nsbp->sb_rextsize = in->extsize;
^1da177e4c3f41 Linus Torvalds      2005-04-16   973  		nsbp->sb_rbmblocks = bmbno + 1;
^1da177e4c3f41 Linus Torvalds      2005-04-16   974  		nsbp->sb_rblocks =
^1da177e4c3f41 Linus Torvalds      2005-04-16   975  			XFS_RTMIN(nrblocks,
^1da177e4c3f41 Linus Torvalds      2005-04-16   976  				  nsbp->sb_rbmblocks * NBBY *
^1da177e4c3f41 Linus Torvalds      2005-04-16   977  				  nsbp->sb_blocksize * nsbp->sb_rextsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16   978  		nsbp->sb_rextents = nsbp->sb_rblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16   979  		do_div(nsbp->sb_rextents, nsbp->sb_rextsize);
79071eb0b2f142 David Chinner       2008-08-13   980  		ASSERT(nsbp->sb_rextents != 0);
^1da177e4c3f41 Linus Torvalds      2005-04-16   981  		nsbp->sb_rextslog = xfs_highbit32(nsbp->sb_rextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16   982  		nrsumlevels = nmp->m_rsumlevels = nsbp->sb_rextslog + 1;
^1da177e4c3f41 Linus Torvalds      2005-04-16   983  		nrsumsize =
^1da177e4c3f41 Linus Torvalds      2005-04-16   984  			(uint)sizeof(xfs_suminfo_t) * nrsumlevels *
^1da177e4c3f41 Linus Torvalds      2005-04-16   985  			nsbp->sb_rbmblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16   986  		nrsumblocks = XFS_B_TO_FSB(mp, nrsumsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16   987  		nmp->m_rsumsize = nrsumsize = XFS_FSB_TO_B(mp, nrsumblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16   988  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   989  		 * Start a transaction, get the log reservation.
^1da177e4c3f41 Linus Torvalds      2005-04-16   990  		 */
253f4911f297b8 Christoph Hellwig   2016-04-06   991  		error = xfs_trans_alloc(mp, &M_RES(mp)->tr_growrtfree, 0, 0, 0,
253f4911f297b8 Christoph Hellwig   2016-04-06   992  				&tp);
3d3c8b5222b924 Jie Liu             2013-08-12   993  		if (error)
253f4911f297b8 Christoph Hellwig   2016-04-06   994  			break;
^1da177e4c3f41 Linus Torvalds      2005-04-16   995  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   996  		 * Lock out other callers by grabbing the bitmap inode lock.
^1da177e4c3f41 Linus Torvalds      2005-04-16   997  		 */
1050c71e2925ab Christoph Hellwig   2011-02-13   998  		xfs_ilock(mp->m_rbmip, XFS_ILOCK_EXCL);
ddc3415aba1cb2 Christoph Hellwig   2011-09-19   999  		xfs_trans_ijoin(tp, mp->m_rbmip, XFS_ILOCK_EXCL);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1000  		/*
bda64b43564ac3 Darrick J. Wong     2020-10-07  1001  		 * Update the bitmap inode's size ondisk and incore.  We need
bda64b43564ac3 Darrick J. Wong     2020-10-07  1002  		 * to update the incore size so that inode inactivation won't
bda64b43564ac3 Darrick J. Wong     2020-10-07  1003  		 * punch what it thinks are "posteof" blocks.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1004  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1005  		mp->m_rbmip->i_d.di_size =
^1da177e4c3f41 Linus Torvalds      2005-04-16  1006  			nsbp->sb_rbmblocks * nsbp->sb_blocksize;
bda64b43564ac3 Darrick J. Wong     2020-10-07  1007  		i_size_write(VFS_I(mp->m_rbmip), mp->m_rbmip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1008  		xfs_trans_log_inode(tp, mp->m_rbmip, XFS_ILOG_CORE);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1009  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1010  		 * Get the summary inode into the transaction.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1011  		 */
1050c71e2925ab Christoph Hellwig   2011-02-13  1012  		xfs_ilock(mp->m_rsumip, XFS_ILOCK_EXCL);
ddc3415aba1cb2 Christoph Hellwig   2011-09-19  1013  		xfs_trans_ijoin(tp, mp->m_rsumip, XFS_ILOCK_EXCL);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1014  		/*
bda64b43564ac3 Darrick J. Wong     2020-10-07  1015  		 * Update the summary inode's size.  We need to update the
bda64b43564ac3 Darrick J. Wong     2020-10-07  1016  		 * incore size so that inode inactivation won't punch what it
bda64b43564ac3 Darrick J. Wong     2020-10-07  1017  		 * thinks are "posteof" blocks.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1018  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1019  		mp->m_rsumip->i_d.di_size = nmp->m_rsumsize;
bda64b43564ac3 Darrick J. Wong     2020-10-07  1020  		i_size_write(VFS_I(mp->m_rsumip), mp->m_rsumip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1021  		xfs_trans_log_inode(tp, mp->m_rsumip, XFS_ILOG_CORE);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1022  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1023  		 * Copy summary data from old to new sizes.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1024  		 * Do this when the real size (not block-aligned) changes.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1025  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1026  		if (sbp->sb_rbmblocks != nsbp->sb_rbmblocks ||
^1da177e4c3f41 Linus Torvalds      2005-04-16  1027  		    mp->m_rsumlevels != nmp->m_rsumlevels) {
^1da177e4c3f41 Linus Torvalds      2005-04-16  1028  			error = xfs_rtcopy_summary(mp, nmp, tp);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1029  			if (error)
0924b585fc49bf Dave Chinner        2008-11-28  1030  				goto error_cancel;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1031  		}
^1da177e4c3f41 Linus Torvalds      2005-04-16  1032  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1033  		 * Update superblock fields.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1034  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1035  		if (nsbp->sb_rextsize != sbp->sb_rextsize)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1036  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTSIZE,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1037  				nsbp->sb_rextsize - sbp->sb_rextsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1038  		if (nsbp->sb_rbmblocks != sbp->sb_rbmblocks)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1039  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_RBMBLOCKS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1040  				nsbp->sb_rbmblocks - sbp->sb_rbmblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1041  		if (nsbp->sb_rblocks != sbp->sb_rblocks)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1042  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_RBLOCKS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1043  				nsbp->sb_rblocks - sbp->sb_rblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1044  		if (nsbp->sb_rextents != sbp->sb_rextents)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1045  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTENTS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1046  				nsbp->sb_rextents - sbp->sb_rextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1047  		if (nsbp->sb_rextslog != sbp->sb_rextslog)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1048  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTSLOG,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1049  				nsbp->sb_rextslog - sbp->sb_rextslog);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1050  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1051  		 * Free new extent.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1052  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1053  		bp = NULL;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1054  		error = xfs_rtfree_range(nmp, tp, sbp->sb_rextents,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1055  			nsbp->sb_rextents - sbp->sb_rextents, &bp, &sumbno);
0924b585fc49bf Dave Chinner        2008-11-28  1056  		if (error) {
0924b585fc49bf Dave Chinner        2008-11-28  1057  error_cancel:
4906e21545814e Christoph Hellwig   2015-06-04  1058  			xfs_trans_cancel(tp);
d432c80e68e3c2 Nathan Scott        2006-09-28  1059  			break;
0924b585fc49bf Dave Chinner        2008-11-28  1060  		}
^1da177e4c3f41 Linus Torvalds      2005-04-16  1061  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1062  		 * Mark more blocks free in the superblock.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1063  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1064  		xfs_trans_mod_sb(tp, XFS_TRANS_SB_FREXTENTS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1065  			nsbp->sb_rextents - sbp->sb_rextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1066  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1067  		 * Update mp values into the real mp structure.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1068  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1069  		mp->m_rsumlevels = nrsumlevels;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1070  		mp->m_rsumsize = nrsumsize;
e5720eec0548c0 David Chinner       2008-04-10  1071  
70393313dd0b26 Christoph Hellwig   2015-06-04  1072  		error = xfs_trans_commit(tp);
0924b585fc49bf Dave Chinner        2008-11-28  1073  		if (error)
e5720eec0548c0 David Chinner       2008-04-10  1074  			break;
e5720eec0548c0 David Chinner       2008-04-10  1075  	}
^1da177e4c3f41 Linus Torvalds      2005-04-16  1076  
^1da177e4c3f41 Linus Torvalds      2005-04-16  1077  	/*
d432c80e68e3c2 Nathan Scott        2006-09-28  1078  	 * Free the fake mp structure.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1079  	 */
f0e2d93c29dc39 Denys Vlasenko      2008-05-19  1080  	kmem_free(nmp);
d432c80e68e3c2 Nathan Scott        2006-09-28  1081  
^1da177e4c3f41 Linus Torvalds      2005-04-16  1082  	return error;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1083  }
^1da177e4c3f41 Linus Torvalds      2005-04-16  1084  

:::::: The code at line 875 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102161822.x8gEREeZ-lkp%40intel.com.

--VbJkn9YxBvnuCH5J
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--VbJkn9YxBvnuCH5J--
