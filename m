Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBD7ZRSAAMGQEUIYNXVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 332C92F8EDE
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 20:20:50 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id x189sf3009544iof.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 11:20:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610824848; cv=pass;
        d=google.com; s=arc-20160816;
        b=gLsGXOC9cbf0CglpIn9Aq1TXBGHq/vvdg5DI07AlMnZTHj+ts4hzcMCypxIxl+4ySY
         9IqyDCtBQ9DcA06Y1r7m1q20pGWJ0YNDRUNtzWHsWlbEP/PPjRJgswwM8nWs1bhZdwtc
         FACP5aeMPdfu+LC0mIrcEBN9NenhlvQHopwhjFC+f97SxKxoPaZKjrd2P0DlGHKXizyj
         znUyyi1c4xSya5a925LHunYeTuHBCxsAhBi6TXXQsndfKKb/3KX0RJMssL7bDHJpJ8GW
         OQTk6VuUFW5OwCMglTk4KSSV0kEVkRZfvSQ2PbvAazVfM1v3C2oTpZw0q/LLV7ViOC/W
         fHrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=qOLcNfZwG3bXJv1Sw3svuFM7IHv6oLCzHzaG8ZFzmGU=;
        b=Me+tY66f9nZf4P4Q4uweAgKpOeZBoHB2WuNcBKRVElkwMupcL5v9SOe6TE6s0y5pL2
         SX8e1UfL0gXub5ubaSi+SaRz7FKXqPtp/LQzF0qI9WskOdF89lgb3n9wPqtoNt12MwFZ
         HGCVQZjduME7V7p/g0STXkv0NeFDhd+oPkLaAqQA/tQYEvh4Y1Q1ORsH4+la7TfYF9A6
         gomqteHlcGJ4h50V2eTinG0VeZaB6Hr4px5LOfm7CR+R/f+QB4bkOw3VOcJ5W7i9bTwj
         W9t7gEvsKFG7zvp3ckLxnQL66jZu9I1f1WKTo0L8gh/cXwibhBQRoxyRSjxmlkKHkH9d
         8LsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qOLcNfZwG3bXJv1Sw3svuFM7IHv6oLCzHzaG8ZFzmGU=;
        b=lKfZGQaTFtDoCbwPr/Y13qS8qUw6x5W7uw9StL4AqLQd1cqYrff++6v9GDhwfiy9s7
         v8ke7WCyS11ZRzP9U7Iy5XOP33vDY7UqcDxEU+ZAKCz/8CHSs6RTcfWwr2aLeHLuIbXv
         2EnfsLi6ueh4pzgTGVYnncv87kh0eCdsnh+eMKQdCOngOC00V0tI2QDdd0dauLOF35Z+
         Z1X/nZ2ckg+0RiqXyYdrdCJUUf2MpqhC29cC/77dtz2Sqtk4d/T4eQJUH5snR08VYcZ8
         0TExbBB7BDU+GyZm1VM+iHfpnZtUcAbEXQ2RUinl3URSMjHsLSvi+ZyoQZXaKKzAG6C5
         +0Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qOLcNfZwG3bXJv1Sw3svuFM7IHv6oLCzHzaG8ZFzmGU=;
        b=DCJVCWGxiCdWDduXicFknO5jz8zOf3O8HoSrxUlN54KVKhZMLnWUDNDrT/ro3qFY9g
         jS+z1/DzcBTOga6LPA+bey0XsDoe/YRZ9yOpMWPYUbzO/fQXXz/xk3+fKKWNxgPav2uV
         HR6zC15UaXpEyKXxlJdqKvh9h3gDbJ0B8Je3mgI6GtOqYI4h3enRAkWfyInW746wvF8E
         hun4U18yWChNTbwoLd3TfUFA5WuFz5EX78OQOH6izozFa9ry6nmLvxGvjlqcqCNMLh0j
         QT+sjL67BIvLhPJqlqWeGwVEW6wLyCJ5yLC/q7LkqP+VeIa7F4QRqb1wuyBeLGBYcsUj
         CBKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hveba2ck9yZOlRf64dV8jppEkeEIHviDsUngilpXt3lwnzK6M
	vB47pM/CyLx21KJYrGktXKY=
X-Google-Smtp-Source: ABdhPJxr7GidxNdylmx1Y0TxeIXIFKWUm/fDHoH2IUuQm9CZzk9mWJW8WE9fonCnu/CHN6r+QcsQuA==
X-Received: by 2002:a92:5804:: with SMTP id m4mr1673452ilb.56.1610824847773;
        Sat, 16 Jan 2021 11:20:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:7f0f:: with SMTP id a15ls3461522ild.8.gmail; Sat, 16 Jan
 2021 11:20:47 -0800 (PST)
X-Received: by 2002:a92:48d2:: with SMTP id j79mr15757721ilg.201.1610824847062;
        Sat, 16 Jan 2021 11:20:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610824847; cv=none;
        d=google.com; s=arc-20160816;
        b=sI8lSysL7m3/UjWgl2LEPzJz09+pqexAdYnZijaqXyV+j3kjdNkT6dkV2SyeOnSrP4
         mdWtB28kDrYPqLEiXoWuZVfA8tg8LzLBwBV9xdXFodLWQCMleVrMDBkN6VxLzmOkB6JJ
         WThXVWJu0kjOHPZNJae55M8JrT39M1p4EqHC0g7btOAsLvUXlYawROO8IU0zt0OTvzL0
         tCbc04ImYNIO+1L+XI6hN6mgGC14ycrG3i07DE/EjlfbdL/XODFZhZx2I/2jDMoxMm2L
         WUGX8mTklF4PaCJM+Q28TkmWQZ7OULXxZOcS38hvsKlZu95Il95IVt5vAkXE9FYg2DnG
         Tq3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=07jkQl1Bsp6oK9YOX8p/kP9eX1xLkAFxxP+jDMrPXCI=;
        b=FA01AH3KzW0UC4nYQJfDMiQ5zW8oJ3XUuTeKi3RE6N/TVimBTYzm8ndDoLEtrI2DL/
         K/EPBRW33N9GMJGk2tVlKY/5sTsXFUvWwmubXv/pNSXD9bTmppWipeKvuueOlgQwNPNj
         HnOxMVyE+zcx/LTM+a9PTRGUdjaIekNL0ffIuVSzZKTVm7G5fC2PEWI1I/KrifOiAYB1
         F86Y0ejF2wON5DODv6MS3LBpVI52gZEWEWEDQF1YHRBTXoNoWUZSUcxXPchyxtU5+nK+
         iDSxCTDwORWC7Q3cy/xL82GvIZbe3pH6MqzNBgNgdtZvmtG0yrSy/wrRIuhougVuU6sm
         Lv8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id l3si739214iol.1.2021.01.16.11.20.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Jan 2021 11:20:46 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: ezUPtiJHA+XeLgZKWSviAgBqRoQM8Z+Q55ReOeTL78+OlAmGf0kpMYJIoGfOv1Ityuv9iRsExO
 zbONqZwZhjsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9866"; a="178831189"
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; 
   d="gz'50?scan'50,208,50";a="178831189"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2021 11:20:45 -0800
IronPort-SDR: HJie6e63uzsYtw1sbBsb45RdaF7HemyTPG0Y3mbPL5GuWwGEEPfQov1aH+IhrDEWJf2jfARfnG
 X0/BtAakVi2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; 
   d="gz'50?scan'50,208,50";a="390422792"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 16 Jan 2021 11:20:43 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l0r7q-00015J-Np; Sat, 16 Jan 2021 19:20:42 +0000
Date: Sun, 17 Jan 2021 03:19:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Chandan Babu R <chandanrlinux@gmail.com>
Subject: fs/xfs/xfs_rtalloc.c:898:1: warning: stack frame size of 1056 bytes
 in function 'xfs_growfs_rt'
Message-ID: <202101170343.N74p02P6-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="X1bOJ3K7DJ5YkBrT"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   1d94330a437a573cfdf848f6743b1ed169242c8a
commit: f4c32e87de7d66074d5612567c5eac7325024428 xfs: fix realtime bitmap/summary file truncation when growing rt volume
date:   3 months ago
config: mips-randconfig-r023-20210116 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d7bc3b7ce23b664d6620cdc32370a8614523ca2f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f4c32e87de7d66074d5612567c5eac7325024428
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout f4c32e87de7d66074d5612567c5eac7325024428
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/xfs/xfs_rtalloc.c:898:1: warning: stack frame size of 1056 bytes in function 'xfs_growfs_rt' [-Wframe-larger-than=]
   xfs_growfs_rt(
   ^
   1 warning generated.


vim +/xfs_growfs_rt +898 fs/xfs/xfs_rtalloc.c

65eed012d1f2d0f0 Omar Sandoval       2018-12-21   889  
^1da177e4c3f4152 Linus Torvalds      2005-04-16   890  /*
^1da177e4c3f4152 Linus Torvalds      2005-04-16   891   * Visible (exported) functions.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   892   */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   893  
^1da177e4c3f4152 Linus Torvalds      2005-04-16   894  /*
^1da177e4c3f4152 Linus Torvalds      2005-04-16   895   * Grow the realtime area of the filesystem.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   896   */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   897  int
^1da177e4c3f4152 Linus Torvalds      2005-04-16  @898  xfs_growfs_rt(
^1da177e4c3f4152 Linus Torvalds      2005-04-16   899  	xfs_mount_t	*mp,		/* mount point for filesystem */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   900  	xfs_growfs_rt_t	*in)		/* growfs rt input struct */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   901  {
^1da177e4c3f4152 Linus Torvalds      2005-04-16   902  	xfs_rtblock_t	bmbno;		/* bitmap block number */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   903  	xfs_buf_t	*bp;		/* temporary buffer */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   904  	int		error;		/* error return value */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   905  	xfs_mount_t	*nmp;		/* new (fake) mount structure */
d5cf09baced0ef3d Christoph Hellwig   2014-07-30   906  	xfs_rfsblock_t	nrblocks;	/* new number of realtime blocks */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   907  	xfs_extlen_t	nrbmblocks;	/* new number of rt bitmap blocks */
d5cf09baced0ef3d Christoph Hellwig   2014-07-30   908  	xfs_rtblock_t	nrextents;	/* new number of realtime extents */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   909  	uint8_t		nrextslog;	/* new log2 of sb_rextents */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   910  	xfs_extlen_t	nrsumblocks;	/* new number of summary blocks */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   911  	uint		nrsumlevels;	/* new rt summary levels */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   912  	uint		nrsumsize;	/* new size of rt summary, bytes */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   913  	xfs_sb_t	*nsbp;		/* new superblock */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   914  	xfs_extlen_t	rbmblocks;	/* current number of rt bitmap blocks */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   915  	xfs_extlen_t	rsumblocks;	/* current number of rt summary blks */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   916  	xfs_sb_t	*sbp;		/* old superblock */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   917  	xfs_fsblock_t	sumbno;		/* summary block number */
65eed012d1f2d0f0 Omar Sandoval       2018-12-21   918  	uint8_t		*rsum_cache;	/* old summary cache */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   919  
^1da177e4c3f4152 Linus Torvalds      2005-04-16   920  	sbp = &mp->m_sb;
^1da177e4c3f4152 Linus Torvalds      2005-04-16   921  	/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16   922  	 * Initial error checking.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   923  	 */
743bb4650da9e259 sandeen@sandeen.net 2008-11-25   924  	if (!capable(CAP_SYS_ADMIN))
2451337dd043901b Dave Chinner        2014-06-25   925  		return -EPERM;
73024cf11522c023 Eric Sesterhenn     2006-06-28   926  	if (mp->m_rtdev_targp == NULL || mp->m_rbmip == NULL ||
^1da177e4c3f4152 Linus Torvalds      2005-04-16   927  	    (nrblocks = in->newblocks) <= sbp->sb_rblocks ||
^1da177e4c3f4152 Linus Torvalds      2005-04-16   928  	    (sbp->sb_rblocks && (in->extsize != sbp->sb_rextsize)))
2451337dd043901b Dave Chinner        2014-06-25   929  		return -EINVAL;
4cc929ee305c6957 Nathan Scott        2007-05-14   930  	if ((error = xfs_sb_validate_fsb_count(sbp, nrblocks)))
4cc929ee305c6957 Nathan Scott        2007-05-14   931  		return error;
^1da177e4c3f4152 Linus Torvalds      2005-04-16   932  	/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16   933  	 * Read in the last block of the device, make sure it exists.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   934  	 */
ba3726742c1712c4 Dave Chinner        2014-10-02   935  	error = xfs_buf_read_uncached(mp->m_rtdev_targp,
4cc929ee305c6957 Nathan Scott        2007-05-14   936  				XFS_FSB_TO_BB(mp, nrblocks - 1),
ba3726742c1712c4 Dave Chinner        2014-10-02   937  				XFS_FSB_TO_BB(mp, 1), 0, &bp, NULL);
ba3726742c1712c4 Dave Chinner        2014-10-02   938  	if (error)
eab4e63368b4cfa5 Dave Chinner        2012-11-12   939  		return error;
^1da177e4c3f4152 Linus Torvalds      2005-04-16   940  	xfs_buf_relse(bp);
1922c949c59f93be Dave Chinner        2010-09-22   941  
^1da177e4c3f4152 Linus Torvalds      2005-04-16   942  	/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16   943  	 * Calculate new parameters.  These are the final values to be reached.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   944  	 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   945  	nrextents = nrblocks;
^1da177e4c3f4152 Linus Torvalds      2005-04-16   946  	do_div(nrextents, in->extsize);
68c3271515f11f66 Nathan Scott        2006-09-28   947  	nrbmblocks = howmany_64(nrextents, NBBY * sbp->sb_blocksize);
^1da177e4c3f4152 Linus Torvalds      2005-04-16   948  	nrextslog = xfs_highbit32(nrextents);
^1da177e4c3f4152 Linus Torvalds      2005-04-16   949  	nrsumlevels = nrextslog + 1;
^1da177e4c3f4152 Linus Torvalds      2005-04-16   950  	nrsumsize = (uint)sizeof(xfs_suminfo_t) * nrsumlevels * nrbmblocks;
^1da177e4c3f4152 Linus Torvalds      2005-04-16   951  	nrsumblocks = XFS_B_TO_FSB(mp, nrsumsize);
^1da177e4c3f4152 Linus Torvalds      2005-04-16   952  	nrsumsize = XFS_FSB_TO_B(mp, nrsumblocks);
^1da177e4c3f4152 Linus Torvalds      2005-04-16   953  	/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16   954  	 * New summary size can't be more than half the size of
^1da177e4c3f4152 Linus Torvalds      2005-04-16   955  	 * the log.  This prevents us from getting a log overflow,
^1da177e4c3f4152 Linus Torvalds      2005-04-16   956  	 * since we'll log basically the whole summary file at once.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   957  	 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   958  	if (nrsumblocks > (mp->m_sb.sb_logblocks >> 1))
2451337dd043901b Dave Chinner        2014-06-25   959  		return -EINVAL;
^1da177e4c3f4152 Linus Torvalds      2005-04-16   960  	/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16   961  	 * Get the old block counts for bitmap and summary inodes.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   962  	 * These can't change since other growfs callers are locked out.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   963  	 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   964  	rbmblocks = XFS_B_TO_FSB(mp, mp->m_rbmip->i_d.di_size);
^1da177e4c3f4152 Linus Torvalds      2005-04-16   965  	rsumblocks = XFS_B_TO_FSB(mp, mp->m_rsumip->i_d.di_size);
^1da177e4c3f4152 Linus Torvalds      2005-04-16   966  	/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16   967  	 * Allocate space to the bitmap and summary files, as necessary.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   968  	 */
1050c71e2925ab0c Christoph Hellwig   2011-02-13   969  	error = xfs_growfs_rt_alloc(mp, rbmblocks, nrbmblocks, mp->m_rbmip);
1050c71e2925ab0c Christoph Hellwig   2011-02-13   970  	if (error)
^1da177e4c3f4152 Linus Torvalds      2005-04-16   971  		return error;
1050c71e2925ab0c Christoph Hellwig   2011-02-13   972  	error = xfs_growfs_rt_alloc(mp, rsumblocks, nrsumblocks, mp->m_rsumip);
1050c71e2925ab0c Christoph Hellwig   2011-02-13   973  	if (error)
^1da177e4c3f4152 Linus Torvalds      2005-04-16   974  		return error;
65eed012d1f2d0f0 Omar Sandoval       2018-12-21   975  
65eed012d1f2d0f0 Omar Sandoval       2018-12-21   976  	rsum_cache = mp->m_rsum_cache;
65eed012d1f2d0f0 Omar Sandoval       2018-12-21   977  	if (nrbmblocks != sbp->sb_rbmblocks)
65eed012d1f2d0f0 Omar Sandoval       2018-12-21   978  		xfs_alloc_rsum_cache(mp, nrbmblocks);
65eed012d1f2d0f0 Omar Sandoval       2018-12-21   979  
d432c80e68e3c283 Nathan Scott        2006-09-28   980  	/*
d432c80e68e3c283 Nathan Scott        2006-09-28   981  	 * Allocate a new (fake) mount/sb.
d432c80e68e3c283 Nathan Scott        2006-09-28   982  	 */
707e0ddaf67e8942 Tetsuo Handa        2019-08-26   983  	nmp = kmem_alloc(sizeof(*nmp), 0);
^1da177e4c3f4152 Linus Torvalds      2005-04-16   984  	/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16   985  	 * Loop over the bitmap blocks.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   986  	 * We will do everything one bitmap block at a time.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   987  	 * Skip the current block if it is exactly full.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   988  	 * This also deals with the case where there were no rtextents before.
^1da177e4c3f4152 Linus Torvalds      2005-04-16   989  	 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16   990  	for (bmbno = sbp->sb_rbmblocks -
^1da177e4c3f4152 Linus Torvalds      2005-04-16   991  		     ((sbp->sb_rextents & ((1 << mp->m_blkbit_log) - 1)) != 0);
^1da177e4c3f4152 Linus Torvalds      2005-04-16   992  	     bmbno < nrbmblocks;
^1da177e4c3f4152 Linus Torvalds      2005-04-16   993  	     bmbno++) {
0924b585fc49bf37 Dave Chinner        2008-11-28   994  		xfs_trans_t	*tp;
0924b585fc49bf37 Dave Chinner        2008-11-28   995  
^1da177e4c3f4152 Linus Torvalds      2005-04-16   996  		*nmp = *mp;
^1da177e4c3f4152 Linus Torvalds      2005-04-16   997  		nsbp = &nmp->m_sb;
^1da177e4c3f4152 Linus Torvalds      2005-04-16   998  		/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16   999  		 * Calculate new sb and mount fields for this round.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1000  		 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1001  		nsbp->sb_rextsize = in->extsize;
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1002  		nsbp->sb_rbmblocks = bmbno + 1;
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1003  		nsbp->sb_rblocks =
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1004  			XFS_RTMIN(nrblocks,
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1005  				  nsbp->sb_rbmblocks * NBBY *
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1006  				  nsbp->sb_blocksize * nsbp->sb_rextsize);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1007  		nsbp->sb_rextents = nsbp->sb_rblocks;
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1008  		do_div(nsbp->sb_rextents, nsbp->sb_rextsize);
79071eb0b2f142b9 David Chinner       2008-08-13  1009  		ASSERT(nsbp->sb_rextents != 0);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1010  		nsbp->sb_rextslog = xfs_highbit32(nsbp->sb_rextents);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1011  		nrsumlevels = nmp->m_rsumlevels = nsbp->sb_rextslog + 1;
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1012  		nrsumsize =
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1013  			(uint)sizeof(xfs_suminfo_t) * nrsumlevels *
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1014  			nsbp->sb_rbmblocks;
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1015  		nrsumblocks = XFS_B_TO_FSB(mp, nrsumsize);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1016  		nmp->m_rsumsize = nrsumsize = XFS_FSB_TO_B(mp, nrsumblocks);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1017  		/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1018  		 * Start a transaction, get the log reservation.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1019  		 */
253f4911f297b837 Christoph Hellwig   2016-04-06  1020  		error = xfs_trans_alloc(mp, &M_RES(mp)->tr_growrtfree, 0, 0, 0,
253f4911f297b837 Christoph Hellwig   2016-04-06  1021  				&tp);
3d3c8b5222b92447 Jie Liu             2013-08-12  1022  		if (error)
253f4911f297b837 Christoph Hellwig   2016-04-06  1023  			break;
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1024  		/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1025  		 * Lock out other callers by grabbing the bitmap inode lock.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1026  		 */
1050c71e2925ab0c Christoph Hellwig   2011-02-13  1027  		xfs_ilock(mp->m_rbmip, XFS_ILOCK_EXCL);
ddc3415aba1cb2f8 Christoph Hellwig   2011-09-19  1028  		xfs_trans_ijoin(tp, mp->m_rbmip, XFS_ILOCK_EXCL);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1029  		/*
f4c32e87de7d6607 Darrick J. Wong     2020-10-07  1030  		 * Update the bitmap inode's size ondisk and incore.  We need
f4c32e87de7d6607 Darrick J. Wong     2020-10-07  1031  		 * to update the incore size so that inode inactivation won't
f4c32e87de7d6607 Darrick J. Wong     2020-10-07  1032  		 * punch what it thinks are "posteof" blocks.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1033  		 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1034  		mp->m_rbmip->i_d.di_size =
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1035  			nsbp->sb_rbmblocks * nsbp->sb_blocksize;
f4c32e87de7d6607 Darrick J. Wong     2020-10-07  1036  		i_size_write(VFS_I(mp->m_rbmip), mp->m_rbmip->i_d.di_size);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1037  		xfs_trans_log_inode(tp, mp->m_rbmip, XFS_ILOG_CORE);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1038  		/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1039  		 * Get the summary inode into the transaction.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1040  		 */
1050c71e2925ab0c Christoph Hellwig   2011-02-13  1041  		xfs_ilock(mp->m_rsumip, XFS_ILOCK_EXCL);
ddc3415aba1cb2f8 Christoph Hellwig   2011-09-19  1042  		xfs_trans_ijoin(tp, mp->m_rsumip, XFS_ILOCK_EXCL);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1043  		/*
f4c32e87de7d6607 Darrick J. Wong     2020-10-07  1044  		 * Update the summary inode's size.  We need to update the
f4c32e87de7d6607 Darrick J. Wong     2020-10-07  1045  		 * incore size so that inode inactivation won't punch what it
f4c32e87de7d6607 Darrick J. Wong     2020-10-07  1046  		 * thinks are "posteof" blocks.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1047  		 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1048  		mp->m_rsumip->i_d.di_size = nmp->m_rsumsize;
f4c32e87de7d6607 Darrick J. Wong     2020-10-07  1049  		i_size_write(VFS_I(mp->m_rsumip), mp->m_rsumip->i_d.di_size);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1050  		xfs_trans_log_inode(tp, mp->m_rsumip, XFS_ILOG_CORE);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1051  		/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1052  		 * Copy summary data from old to new sizes.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1053  		 * Do this when the real size (not block-aligned) changes.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1054  		 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1055  		if (sbp->sb_rbmblocks != nsbp->sb_rbmblocks ||
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1056  		    mp->m_rsumlevels != nmp->m_rsumlevels) {
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1057  			error = xfs_rtcopy_summary(mp, nmp, tp);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1058  			if (error)
0924b585fc49bf37 Dave Chinner        2008-11-28  1059  				goto error_cancel;
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1060  		}
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1061  		/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1062  		 * Update superblock fields.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1063  		 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1064  		if (nsbp->sb_rextsize != sbp->sb_rextsize)
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1065  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTSIZE,
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1066  				nsbp->sb_rextsize - sbp->sb_rextsize);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1067  		if (nsbp->sb_rbmblocks != sbp->sb_rbmblocks)
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1068  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_RBMBLOCKS,
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1069  				nsbp->sb_rbmblocks - sbp->sb_rbmblocks);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1070  		if (nsbp->sb_rblocks != sbp->sb_rblocks)
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1071  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_RBLOCKS,
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1072  				nsbp->sb_rblocks - sbp->sb_rblocks);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1073  		if (nsbp->sb_rextents != sbp->sb_rextents)
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1074  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTENTS,
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1075  				nsbp->sb_rextents - sbp->sb_rextents);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1076  		if (nsbp->sb_rextslog != sbp->sb_rextslog)
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1077  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTSLOG,
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1078  				nsbp->sb_rextslog - sbp->sb_rextslog);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1079  		/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1080  		 * Free new extent.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1081  		 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1082  		bp = NULL;
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1083  		error = xfs_rtfree_range(nmp, tp, sbp->sb_rextents,
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1084  			nsbp->sb_rextents - sbp->sb_rextents, &bp, &sumbno);
0924b585fc49bf37 Dave Chinner        2008-11-28  1085  		if (error) {
0924b585fc49bf37 Dave Chinner        2008-11-28  1086  error_cancel:
4906e21545814e41 Christoph Hellwig   2015-06-04  1087  			xfs_trans_cancel(tp);
d432c80e68e3c283 Nathan Scott        2006-09-28  1088  			break;
0924b585fc49bf37 Dave Chinner        2008-11-28  1089  		}
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1090  		/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1091  		 * Mark more blocks free in the superblock.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1092  		 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1093  		xfs_trans_mod_sb(tp, XFS_TRANS_SB_FREXTENTS,
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1094  			nsbp->sb_rextents - sbp->sb_rextents);
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1095  		/*
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1096  		 * Update mp values into the real mp structure.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1097  		 */
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1098  		mp->m_rsumlevels = nrsumlevels;
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1099  		mp->m_rsumsize = nrsumsize;
e5720eec0548c089 David Chinner       2008-04-10  1100  
70393313dd0b26a6 Christoph Hellwig   2015-06-04  1101  		error = xfs_trans_commit(tp);
0924b585fc49bf37 Dave Chinner        2008-11-28  1102  		if (error)
e5720eec0548c089 David Chinner       2008-04-10  1103  			break;
e5720eec0548c089 David Chinner       2008-04-10  1104  	}
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1105  
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1106  	/*
d432c80e68e3c283 Nathan Scott        2006-09-28  1107  	 * Free the fake mp structure.
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1108  	 */
f0e2d93c29dc39ff Denys Vlasenko      2008-05-19  1109  	kmem_free(nmp);
d432c80e68e3c283 Nathan Scott        2006-09-28  1110  
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1111  	/*
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1112  	 * If we had to allocate a new rsum_cache, we either need to free the
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1113  	 * old one (if we succeeded) or free the new one and restore the old one
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1114  	 * (if there was an error).
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1115  	 */
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1116  	if (rsum_cache != mp->m_rsum_cache) {
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1117  		if (error) {
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1118  			kmem_free(mp->m_rsum_cache);
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1119  			mp->m_rsum_cache = rsum_cache;
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1120  		} else {
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1121  			kmem_free(rsum_cache);
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1122  		}
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1123  	}
65eed012d1f2d0f0 Omar Sandoval       2018-12-21  1124  
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1125  	return error;
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1126  }
^1da177e4c3f4152 Linus Torvalds      2005-04-16  1127  

:::::: The code at line 898 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101170343.N74p02P6-lkp%40intel.com.

--X1bOJ3K7DJ5YkBrT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
GFdIPrmGPY92aR36f3E0cYBRbQEA

--X1bOJ3K7DJ5YkBrT--
